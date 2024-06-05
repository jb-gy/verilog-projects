module Combinational_Logic(A, B, C, D, F);

 input A, B, C, D;
 output F;

 assign F = (A & ~B & ~C) | (~A & B & ~C) | (~A & ~B & D) | (A & B & C & D);

endmodule
