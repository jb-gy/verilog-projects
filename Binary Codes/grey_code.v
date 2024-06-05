module grey_code(A,B,C,D,F);

    input A, B,C, D;
    output [3:0]F;

    assign F[3] = A;  
    assign F[2] = ~A&B | A&~B;  
    assign F[1] = ~B&C | B&~C;  
    assign F[0] = ~C&D | C&~D;      

endmodule
