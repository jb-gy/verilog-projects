module SSEG_Decoder (input [3:0] Num, output reg [7:0] Cathode);
always @( *)
begin
    case(Num)
        4'b0000: Cathode = 8'b0111111; // 0
        4'b0001: Cathode = 8'b0000110; // 1
        4'b0010: Cathode = 8'b1011011; // 2
        4'b0011: Cathode = 8'b1001111; // 3
        4'b0100: Cathode = 8'b1100110; // 4
        4'b0101: Cathode = 8'b1101101; //5 
        4'b0110: Cathode = 8'b1111101; //6 
        4'b0111: Cathode = 8'b00110001; //7 
        4'b1000: Cathode = 8'b01111111; //8 
        4'b1001: Cathode = 8'b01101111; //9 
        default: Cathode = 8'b11111111; //display off for invalid input
    endcase 
end 
endmodule
