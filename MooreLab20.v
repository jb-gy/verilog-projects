module top(CLK, E, A, B, F);
    input CLK, E;
    output A, B, F;
   
   //Logic
   

    reg [1:0] state;
    reg [1:0] next_state;
    reg [1:0] output;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 2'b00;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            2'b00: begin
                if (in) begin
                    next_state = 2'b01;
                    output = 1'b0;
                end else begin
                    next_state = 2'b00;
                    output = 1'b0;
                end
            end
            2'b01: begin
                if (in) begin
                    next_state = 2'b01;
                    output = 1'b1;
                end else begin
                    next_state = 2'b10;
                    output = 1'b0;
                end
            end
            2'b10: begin
                if (in) begin
                    next_state = 2'b11;
                    output = 1'b0;
                end else begin
                    next_state = 2'b10;
                    output = 1'b0;
                end
            end
            2'b11: begin
                next_state = 2'b11;
                output = 1'b0;
            end
        endcase
    end

    assign out = output;

endmodule

