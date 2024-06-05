module door_monitor (
    input wire DoorA,
    input wire DoorB,
    input wire DoorC,
    input wire DoorD,
    output wire Light
);

    wire AB_closed;
    wire CD_condition;

    assign AB_closed = ~(DoorA | DoorB);  // NOR of Door A and Door B
    assign CD_condition = DoorC & ~DoorD;  // AND of Door C and NOT Door D

    assign Light = (DoorA & DoorB & DoorC & DoorD) | AB_closed | CD_condition;

endmodule
