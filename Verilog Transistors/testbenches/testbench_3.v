`define assert(actual, expected, outputName, inputs, description, type) \
    $write("\nTIME: "); $write($realtime); \
    if (actual == expected) \
        $display("   PASSED:   "); \
    else begin \
        $display(" ** FAILED:   "); \
        if (description) $display("TEST: %s", description); \
    end \
    $write("%s = ", outputName, type, actual); \
    $write(", EXPECTED: ", type, expected); \
    if (inputs) $display(" WITH: %s", inputs);
// End of `assert macro.

module testbench;
	reg A, B;
	wire out_NOT, out_AND, out_OR;

	top UUT(A, B, out_NOT, out_AND, out_OR);
	
	initial begin
		{A, B} = 2'b10; #1;
		`assert(out_NOT, 1'b0, "out_NOT", "A = 1", "out_NOT not 0", "%b");
		`assert(out_AND, 1'b0, "out_AND", "A = 1, B = 0", "out_AND not 0", "%b");
		`assert(out_OR, 1'b1, "out_OR", "A = 1, B = 0", "out_OR not 1", "%b");
	end
endmodule