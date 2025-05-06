module top(
  input [1:0] SW, // x e y
  output [6:0] HEX0); // a, b, c, d, e, f, g
  // instancie e conecte os módulos a seguir

  assign HEX0[6] = ~(SW1] ^ SW[0]);
  assign HEX0[5] = 1'b1;
  assign HEX0[4] = ~(SW[1] & SW[0]);
  assign HEX0[3] = ~(SW[1] ^ SW[0]);
  assign HEX0[2] = ~(SW[1] ^ SW[0]);
  assign HEX0[1] = ~(SW[1] ^ SW[0]) & ~(SW[1] & SW[0]);
  assign HEX0[0] = ~(SW[1] ^ SW[0]) & (SW[1] & SW[0]);

endmodule
