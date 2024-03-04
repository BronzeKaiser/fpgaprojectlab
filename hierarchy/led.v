module led_control(
    input wire [3:0] motiondir,
    output reg [3:0] led
);

always @* begin
    // Turn on LEDs based on the motion direction
    case (motiondir)
        4'b0000: led = 4'b0000; // No motion
        4'b0001: led = 4'b0001; // LED0 on for Forward
        4'b0010: led = 4'b0010; // LED1 on for Backward
        4'b0100: led = 4'b0100; // LED2 on for Turn right
        4'b1000: led = 4'b1000; // LED3 on for Turn left
        default: led = 4'b0000;  // Default to no motion
    endcase
end

endmodule
