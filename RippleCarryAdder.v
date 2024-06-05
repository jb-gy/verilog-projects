module RippleCarryAdder(
    input [5:0] A,
    input [5:0] B,
    output [5:0] SUM
);

    wire [6:0] CARRY; // Declare CARRY with an extra bit

    assign CARRY[0] = 0;
    genvar i;
    generate
        for(i=0; i<6; i=i+1) begin : adder
            assign {CARRY[i+1], SUM[i]} = A[i] + B[i] + CARRY[i];
        end
    endgenerate

endmodule
