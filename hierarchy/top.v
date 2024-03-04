//top.v
module top(
    input clk,
    input btnU,
    input btnD,
    input btnL,
    input btnR,
    input [3:0] sw,
    output wire hbridge1a, 
    output wire hbridge2a, 
    output wire hbridge1b,  
    output wire hbridge2b, 
    output [3:0] LED
);

wire [3:0] motiondir;

motorcontrol motion_controller(
    .clk(clk),
    .btnU(btnU),
    .btnD(btnD),
    .btnL(btnL),
    .btnR(btnR),
    .bridge1a(hbridge1a),
    .bridge2a(hbridge2a),
    .bridge1b(hbridge1b),
    .bridge2b(hbridge2b),
    .motiondir(motiondir)
);

led_control led_controller(
    .motiondir(motiondir),
    .led(LED)
);

switch motion_switch(
    .sw(sw),
    .motiondir(motiondir)
);

endmodule
