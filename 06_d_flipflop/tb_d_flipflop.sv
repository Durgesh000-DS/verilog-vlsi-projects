module tb;
  reg clk, rst, d;
  wire q;

  d_flipflop uut (.clk(clk), .rst(rst), .d(d), .q(q));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    rst=1; d=0; #10;
    rst=0; d=1; #10;
    d=0; #10;
    d=1; #10;
    d=0; #10;

    $finish;
  end
endmodule
