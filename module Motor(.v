module Motor(
output reg fb,       //     0 = forwards, 1 = backwards
input clk,
output reg EnA,
output reg EnB,
input In1,
input In2,
input In3,
input In4,
output reg Out1,
output reg Out2,
output reg Out3,
output reg Out4
);


always @(posedge clk) begin
        case({In1,In2,In3,In4}) 
            4'b1000: begin EnA <= 1;
             fb <= 0; 
             EnB <= 0;
             Out1 <= 1;
             Out2<=0;
             Out3<=0;
             Out4<=0; end         //turn left
            4'b0100: begin EnA <= 1;
            fb <= 1; 
            EnB <= 0;
            Out2 <= 1;
            Out1 <=0;
            Out3 <=0;
            Out4 <=0;
             end              // reverse left
            4'b0010: begin EnB <= 1; 
            EnA <= 0;
            Out2 <=0;
            Out3 <=1;
            Out1 <=0;
            Out4 <= 0;
             end                   // turn right   
            4'b0001: begin EnB <= 1;
            fb <= 1; 
            EnA <= 0;
            Out3 <= 0;
            Out4 <=1;
            Out2<=0;
            Out1<=0;
             end                //reverse right
            4'b1010: begin EnA <= 1;
             EnB <=1; 
             fb <= 0;
             Out1 <= 1;
             Out3 <= 1;
             Out2<=0;
             Out4<=0;
              end               // both on forwards
            4'b0101: begin EnA <= 1;
            EnB <= 1;
            fb <= 1;
            Out1 <= 0 ;
            Out3 <=0;
            Out2 <=1;
            Out4 <=1; end                    // both on reverse
            default: begin EnA<=0;
            EnB<=0;
            fb <= 0;
            Out1 <=0;
            Out2 <=0;
            Out3 <=0;
            Out4 <=0;
             end // default if any undeclared cases. not true for this
            
        endcase
    end


endmodule