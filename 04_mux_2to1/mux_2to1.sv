module mux_2to1 (
  input  i0,
  input  i1,
  input  sel,
  output y
);
  assign y = sel ? i1 : i0;

endmodule
