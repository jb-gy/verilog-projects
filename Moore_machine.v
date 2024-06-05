module top (
    input wire clk,
    input wire rst,
    input wire in,
    output reg [1:0] state = 2'b00,
    output wire out
);

assign out = (state == 2'b11) ? 1'b1 : 1'b0;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 2'b00;
    end else begin
        case (state)
            2'b00: begin
                if (in) begin
                    state <= 2'b01;
                end
            end
            2'b01: begin
                if (in) begin
                    state <= 2'b10;
                end else begin
                    state <= 2'b00;
                end
            end
            2'b10: begin
                if (in) begin
                    state <= 2'b11;
                end else begin
                    state <= 2'b00;
                end
            end
            2'b11: begin
                state <= 2'b00;
            end
        endcase
    end
end
endmodule