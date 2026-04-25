module traffic_light (
  input  clk,
  input  rst,
  output reg red,
  output reg yellow,
  output reg green
);

  // State encoding
  parameter RED_STATE    = 2'b00;
  parameter GREEN_STATE  = 2'b01;
  parameter YELLOW_STATE = 2'b10;

  reg [1:0] state;
  reg [2:0] count;

  // State transition
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state <= RED_STATE;
      count <= 0;
    end
    else begin
      case (state)

        RED_STATE: begin
          if (count == 5) begin
            state <= GREEN_STATE;
            count <= 0;
          end
          else
            count <= count + 1;
        end

        GREEN_STATE: begin
          if (count == 3) begin
            state <= YELLOW_STATE;
            count <= 0;
          end
          else
            count <= count + 1;
        end

        YELLOW_STATE: begin
          if (count == 1) begin
            state <= RED_STATE;
            count <= 0;
          end
          else
            count <= count + 1;
        end

        default: state <= RED_STATE;

      endcase
    end
  end

  // Output logic
  always @(*) begin
    red    = 0;
    yellow = 0;
    green  = 0;
    case (state)
      RED_STATE:    red    = 1;
      GREEN_STATE:  green  = 1;
      YELLOW_STATE: yellow = 1;
    endcase
  end

endmodule
