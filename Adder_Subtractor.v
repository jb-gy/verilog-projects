module Adder_Subtractor(
    input [5:0] A,
    input [5:0] B,
    input S,
    output reg [5:0] ANSWER
);

always @(*) begin
    if (S == 0) begin
        // Perform addition
        ANSWER = A + B;
    end else begin
        // Perform subtraction
        ANSWER = A - B;
    end
end

endmodule
