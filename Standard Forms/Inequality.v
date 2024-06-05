module Inequality(NUM,OUT);
    //Port Declaration
    input [3:0] NUM;
    output [2:0] OUT;

    //Logic

    assign OUT[0] = (NUM >= 3) && (NUM <= 10) ? 1'b1 : 1'b0;
    assign OUT[1] = (NUM > 7) && (NUM <= 14) ? 1'b1 : 1'b0;
    assign OUT[2] = (NUM[1] == NUM[2]) ? 1'b1 : 1'b0;

endmodule