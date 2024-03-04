module motorcontrol(
    input clk,
    input btnU,
    input btnD,
    input btnL,
    input btnR,
    input wire [3:0] motiondir,
    output reg bridge1a,
    output reg bridge2a,
    output reg bridge1b,
    output reg bridge2b
  
);

reg [3:0] motiondir_reg;

// 0 is rest
// 1 is forwards
// 2 is backwards
// 3 is turn right
// 4 is turn left
// We can add more moves later
always @(posedge clk) begin
     motiondir_reg <= motiondir[3:0];
    if (btnU == 1 || motiondir_reg == 1 ) begin
        bridge1a = 1;
        bridge1b = 0;
        bridge2a = 1;
        bridge2b = 0;
    end
    else if (btnD == 1 || motiondir_reg == 2) begin
        bridge1a = 0;
        bridge1b = 1;
        bridge2a = 0;
        bridge2b = 1; 
    end
    else if (btnL == 1 || motiondir_reg == 3) begin
        bridge1a = 0;
        bridge1b = 1;
        bridge2a = 1;
        bridge2b = 0; 
    end
    else if (btnR == 1 || motiondir_reg == 4) begin
        bridge1a = 1;
        bridge1b = 0;
        bridge2a = 0;
        bridge2b = 1; 
    end
    else begin
        bridge1a = 0;
        bridge1b = 0;
        bridge2a = 0;
        bridge2b = 0; 
    end
end



endmodule
