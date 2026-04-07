module tb;
  reg i0, i1, sel;
  wire y;

  mux_2to1 uut (.i0(i0), .i1(i1), .sel(sel), .y(y));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    i0=0; i1=1; sel=0; #10;
    i0=0; i1=1; sel=1; #10;
    i0=1; i1=0; sel=0; #10;
    i0=1; i1=0; sel=1; #10;

    $finish;
  end
endmodule
