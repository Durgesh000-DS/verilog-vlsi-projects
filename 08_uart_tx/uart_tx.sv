module uart_tx (
  input        clk,
  input        rst,
  input        start,
  input  [7:0] data,
  output reg   tx,
  output reg   done
);

  parameter IDLE  = 2'b00;
  parameter START = 2'b01;
  parameter DATA  = 2'b10;
  parameter STOP  = 2'b11;

  reg [1:0] state;
  reg [2:0] bit_count;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state     <= IDLE;
      tx        <= 1;
      done      <= 0;
      bit_count <= 0;
    end
    else begin
      case (state)

        IDLE: begin
          tx   <= 1;
          done <= 0;
          if (start)
            state <= START;
        end

        START: begin
          tx    <= 0;
          state <= DATA;
          bit_count <= 0;
        end

        DATA: begin
          tx <= data[bit_count];
          if (bit_count == 7)
            state <= STOP;
          else
            bit_count <= bit_count + 1;
        end

        STOP: begin
          tx    <= 1;
          done  <= 1;
          state <= IDLE;
        end

      endcase
    end
  end

endmodule
