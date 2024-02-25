module motorcontrol(
    input clk,
    input btnU,
    input btnD,
    input btnL,
    input btnR,
    output reg hbridge1a,
    output reg hbridge2a,
    output reg hbridge1b,
    output reg hbridge2b
  
);
reg [3:0] motiondir;

// 0 is rest
// 1 is forwards
// 2 is backwards
// 3 is turn right
// 4 is turn left
// We can add more moves later
always @(*) begin
    if (btnU == 1 || motiondir == 1 ) begin
        hbridge1a = 1;
        hbridge1b = 0;
        hbridge2a = 1;
        hbridge2b = 0;
    end
    else if (btnD == 1 || motiondir == 2) begin
        hbridge1a = 0;
        hbridge1b = 1;
        hbridge2a = 0;
        hbridge2b = 1; 
    end
    else if (btnL == 1 || motiondir == 3) begin
        hbridge1a = 0;
        hbridge1b = 1;
        hbridge2a = 1;
        hbridge2b = 0; 
    end
    else if (btnR == 1 || motiondir == 4) begin
        hbridge1a = 1;
        hbridge1b = 0;
        hbridge2a = 0;
        hbridge2b = 1; 
    end
    else begin
        hbridge1a = 0;
        hbridge1b = 0;
        hbridge2a = 0;
        hbridge2b = 0; 
    end
end


endmodule
