module Boolean (input A, B, C, output F);
    wire A_n, B_n, C_n; // Declare wires for the negated inputs

    assign A_n = ~A; // Negate A
    assign B_n = ~B; // Negate B
    assign C_n = ~C; // Negate C

    // Implement the Boolean function F = A'BC + AC + A'B
    assign F = (A_n & B & C) | (A & C) | (A_n & B);
endmodule
