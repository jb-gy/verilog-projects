module top (CLK, D, Q);
    input CLK;
    input  [3:0] D;  // 4-bit data input
    output reg [3:0]Q = 0;   // 4-bit data output


always @(posedge CLK) begin
    Q = D;  // On the rising edge of the clock, the input D is transferred to the output Q
end

endmodule
