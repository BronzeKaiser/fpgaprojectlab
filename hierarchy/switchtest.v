`timescale 1ns / 1ps

module switch(
    input wire [3:0] sw,
    output reg [3:0] motiondir
);

always @* begin
    case (sw)
        4'b0000: motiondir = 4'b0000; // No motion
        4'b0001: motiondir = 4'b0001; // Forward
        4'b0010: motiondir = 4'b0010; // Backward
        4'b0100: motiondir = 4'b0100; // Turn right
        4'b1000: motiondir = 4'b1000; // Turn left
        default: motiondir = 4'b0000;  // Default to no motion
    endcase
end

endmodule
