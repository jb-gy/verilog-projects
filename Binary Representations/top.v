module top(
  input A,
  input B,
  input C,
  output reg F
);

  always @* begin
    // Concatenate the three inputs to form a 3-bit binary number
    // and check if it is divisible by 3
    case ({A, B, C})
      3'b000, 3'b011, 3'b110: F = 1; // Binary representation divisible by 3
      default: F = 0; // Not divisible by 3
    endcase
  end

endmodule
