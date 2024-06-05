/*
transistor_gates.v
Developed By: Derek Johnston @ Texas Tech University

Implement the fundamental logic gates using CMOS primitives.
*/
module top (
	input A, B,
	output out_NOT, out_AND, out_OR
);


    // NOT operation
    assign out_NOT = ~A;

    // AND operation
    assign out_AND = A & B;

    // OR operation
    assign out_OR = A | B;


// NOT GATE

// AND GATE

// OR GATE

endmodule