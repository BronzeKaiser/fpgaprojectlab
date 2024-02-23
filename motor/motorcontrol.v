module motorcontrol(
    input clk,
    input [3:0] sw,
    output reg hbridge1a,
    output reg hbridge2a,
    output reg hbridge1b,
    output reg hbridge2b

);
// We can replace sw with motoiondir later
reg [3:0] motiondir;
// 0 is rest
// 1 is forwards
// 2 is backwards
// 3 is turn right
// 4 is turn left
// We can add more moves later
always @(*) begin
    case(sw)
        0: 
        begin
            hbridge1a = 0;
            hbridge1b = 0;
            hbridge2a = 0;
            hbridge2b = 0; 
        end
        1: 
        begin
            hbridge1a = 1;
            hbridge1b = 0;
            hbridge2a = 1;
            hbridge2b = 0; 
        end
        2: 
        begin
            hbridge1a = 0;
            hbridge1b = 1;
            hbridge2a = 0;
            hbridge2b = 1; 
        end
        3: 
        begin
            hbridge1a = 1;
            hbridge1b = 0;
            hbridge2a = 0;
            hbridge2b = 1; 
        end
        4:
        begin
            hbridge1a = 0;
            hbridge1b = 1;
            hbridge2a = 1;
            hbridge2b = 0; 
        end
    endcase
end

endmodule

