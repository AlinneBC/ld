module top(
  input [1:0] SW, // x e y
  output [6:0] HEX0); // a, b, c, d, e, f, g
  // instancie e conecte os módulos a seguir
wire w0, w1;

  adder somador(
    .a0(SW[0]), 
    .b0(SW[1]), 
    .s0(w0), 
    .v1(w1)
  )

  display mostrador(
    .s0(w0),
    .v1(w1),
    .a(HEX0[0]),
    .b(HEX0[1]),
    .c(HEX0[2]),
    .d(HEX0[3]),
    .e(HEX0[4]),
    .f(HEX0[5]),
    .g(HEX0[6])
  )

endmodule

module adder(
    input a0, b0,
    output s0, v1);

    assign s0 = a0 ^ b0;
    assign v1 = a0 & b0;

endmodule

module display (
  input s0, s1,
  output a, b, c, d, f, g);

    assign a = ~s0;
    assign b = 1'b1;
    assign c = ~s1;
    assign d = ~s0;
    assign e = ~s0;
    assign f = ~s0 & ~s1;
    assign f = ~s0 & s1;

endmodule
