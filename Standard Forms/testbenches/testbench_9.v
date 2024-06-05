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

// It looks like this testbench contains a "$finish" system task.
// Be aware that some simulation programs (e.g. Modelsim) will immediately close once the "$finish" system task is executed.
// If you find that your simulation program is closing unexpectedly, try removing any "$finish" system tasks in this file.

`timescale 1 ns/ 1 ns
module testbench;
   reg [3:0] NUM=0;
   wire [2:0] OUT;
   Inequality UTT(NUM,OUT);
   initial begin
      NUM = 8; #5;
      `assert(OUT[2],1'b1,"OUT[2]","NUM=8","OUT[2] not 0", "%b");
      `assert(OUT[1],1'b1,"OUT[1]","NUM=8","OUT[1] not 1", "%b");
      `assert(OUT[0],1'b1,"OUT[0]","NUM=8","OUT[0] not 1", "%b");
      $finish;
   end
endmodule