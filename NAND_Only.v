module NAND_Only (A, B, C, D, F);
input A, B, C, D;
output F;

assign F = (A&D) | (~A & B & C & ~D) | (~A & ~B);

endmodule
