module SevenSegDriver(
    input wire A, B, C, D,
    output reg [7:0] SevenSegDig
);

always @(A,B,C,D) begin
    case ({A,B,C,D})
        4'b0000: SevenSegDig = 8'b00111111; // Display 0
        4'b0001: SevenSegDig = 8'b00000110; // Display 1
        4'b0010: SevenSegDig = 8'b01011011; // Display 2
        4'b0011: SevenSegDig = 8'b01001111; // Display 3
        4'b0100: SevenSegDig = 8'b01100110; // Display 4
        4'b0101: SevenSegDig = 8'b01101101; // Display 5
        4'b0110: SevenSegDig = 8'b01111101; // Display 6
        4'b0111: SevenSegDig = 8'b00000111; // Display 7
        4'b1000: SevenSegDig = 8'b01111111; // Display 8
        4'b1001: SevenSegDig = 8'b01101111; // Display 9
        4'b1010: SevenSegDig = 8'b01110111; // Display A
        4'b1011: SevenSegDig = 8'b01111100; // Display B
        4'b1100: SevenSegDig = 8'b00111001; // Display C
        4'b1101: SevenSegDig = 8'b01011110; // Display D
        4'b1110: SevenSegDig = 8'b01111001; // Display E
        4'b1111: SevenSegDig = 8'b01110001; // Display F
    endcase
end

endmodule


module Top(
    input [7:0] Value,
    output [7:0] SevenSegDig1,
    output [7:0] SevenSegDig2
);

SevenSegDriver Unit0(Value[7], Value[6], Value[5], Value[4], SevenSegDig1);
SevenSegDriver Unit1(Value[3], Value[2], Value[1], Value[0], SevenSegDig2);

endmodule
