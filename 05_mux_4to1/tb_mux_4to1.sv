module tb;
  reg i0, i1, i2, i3;
  reg [1:0] sel;
  wire y;

  mux_4to1 uut (
    .i0(i0), .i1(i1), .i2(i2), .i3(i3),
    .sel(sel), .y(y)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    i0=1; i1=0; i2=1; i3=0;

    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;

    $finish;
  end
endmodule
