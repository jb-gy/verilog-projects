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
   reg [3:0] Num;
   wire [7:0] Cathode;
   
   SSEG_Decoder UUT(Num, Cathode);
   
   initial begin
      Num = 4'b1000;
      #5 `assert(Cathode, 8'b01111111, "Cathode", "Num = 1000", "F Not 0", "%b");
      $finish;
   end
endmodule