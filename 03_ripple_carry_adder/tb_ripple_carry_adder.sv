module tb;
  reg  [3:0] a, b;
  reg        cin;
  wire [3:0] sum;
  wire       cout;

  ripple_carry_adder uut (
    .a(a), .b(b), .cin(cin),
    .sum(sum), .cout(cout)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    a=4'd9;  b=4'd6;  cin=0; #10;
    a=4'd15; b=4'd15; cin=0; #10;
    a=4'd7;  b=4'd8;  cin=0; #10;
    a=4'd3;  b=4'd5;  cin=1; #10;

    $finish;
  end
endmodule
