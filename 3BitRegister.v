module three_bit_reg(
    input CLK,
    input [2:0] D,
    input Load,
    output reg [2:0] Q = 3'b000
);

always @(posedge CLK) begin
    if (Load == 1'b1) begin
        Q <= D;
    end
    // When Load = 0, the current value in Q is maintained.
end

endmodule
