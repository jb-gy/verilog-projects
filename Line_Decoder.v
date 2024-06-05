module Line_Decoder(Enable, A, B, C, F);
    input Enable, A, B, C;
    output[7:0] F;

    assign F[0] = A & B & C & Enable;
    assign F[1] = A & B & ~C & Enable;
    assign F[2] = A & ~B & C & Enable;
    assign F[3] = A & ~B & ~C & Enable;
    assign F[4] = ~A & B & C & Enable;
    assign F[5] = ~A & B & ~C & Enable;
    assign F[6] = ~A & ~B & C & Enable;
    assign F[7] = ~A & ~B & ~C & Enable;

endmodule
