module tb;
  reg        clk, rst, start;
  reg  [7:0] data;
  wire       tx, done;

  uart_tx uut (
    .clk(clk), .rst(rst), .start(start),
    .data(data), .tx(tx), .done(done)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    rst=1; start=0; data=8'b10101010; #20;
    rst=0; #10;
    start=1; #10;
    start=0; #100;

    $finish;
  end
endmodule
