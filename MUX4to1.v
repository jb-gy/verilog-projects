module MUX4to1 (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire CTRL1,
    input wire CTRL2,
    output reg OUT
);
    always @(*) begin
        case ({CTRL2, CTRL1})
            2'b00: OUT = A;
            2'b01: OUT = C;
            2'b10: OUT = B;
            2'b11: OUT = D;
            default: OUT = 0;
        endcase
    end
endmodule
