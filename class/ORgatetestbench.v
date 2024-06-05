include "ORgate.v"

module Testbench;

    reg a,b;
    wire y;

    ORgate add1(a,b,y);

    initial begin
        $dumpfile("ORgate.vcd");
        $dumpfile(0, Testbench);

        a=0; b=0;
        #2
        a=0; b=1
        #2
        a=1; b=0;
        #2
        a=1; b=1
    end

endmodule