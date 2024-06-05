module Arbiter (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output reg [3:0] F
);

always @* begin
    if (B) F = 4'b0100;
    else if (A) F = 4'b1000;
    else if (C) F = 4'b0010;
    else if (D) F = 4'b0001;
    else F = 4'b0000;
end

endmodule
