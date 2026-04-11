module tb;
  reg clk, rst;
  wire [3:0] count;

  counter_4bit uut (.clk(clk), .rst(rst), .count(count));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    rst=1; #10;
    rst=0; #160;

    $finish;
  end
endmodule
