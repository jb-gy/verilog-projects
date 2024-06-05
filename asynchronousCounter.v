module tflipflop(CLK, T, RST, Q);

    input CLK, T, RST;
    output reg Q = 0;

    //Logic
    always@(posedge CLK or posedge RST) begin
        if (RST)
            Q <= 0;
        else if(T) begin
            Q <= ~Q;
        end
    end
endmodule

module top (CLK, RST, Q);
    input CLK, RST;
    output [3:0] Q;

    tflipflop a (CLK, 1'b1, RST, Q[0]); // LSB
    tflipflop b (CLK, Q[0], RST, Q[1]);
    tflipflop c (CLK, Q[0] & Q[1], RST, Q[2]);
    tflipflop d (CLK, Q[0] & Q[1] & Q[2], RST, Q[3]); // MSB
endmodule
