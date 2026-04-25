module tb;
  reg clk, rst;
  wire red, yellow, green;

  traffic_light uut (
    .clk(clk), .rst(rst),
    .red(red), .yellow(yellow), .green(green)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    rst=1; #10;
    rst=0; #200;

    $finish;
  end
endmodule
