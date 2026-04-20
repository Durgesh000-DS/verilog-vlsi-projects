module half_adder (
  input  a,
  input  b,
  output sum,
  output carry
);

  assign sum  = a ^ b;  // XOR gate
  assign carry = a & b;  // AND gate

endmodule

