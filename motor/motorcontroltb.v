`timescale 1ns/1ns 
`include "motorcontrol.v"

module tb_motorcontrol;

    // Inputs
    reg clk;
    reg [3:0] sw;

    // Outputs
    wire hbridge1a, hbridge2a, hbridge1b, hbridge2b;

    motorcontrol uut(
        .clk(clk),
        .sw(sw),
        .hbridge1a(hbridge1a),
        .hbridge2a(hbridge2a),
        .hbridge1b(hbridge1b),
        .hbridge2b(hbridge2b)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("motorcontrol_waveform.vcd");
        $dumpvars(0, tb_motorcontrol);

        sw = 0;
        #10 sw = 1;
        #10 sw = 2;
        #10 sw = 3;
        #10 sw = 4;
        $finish; 
    end

    always @(posedge clk) begin
        $display("sw=%b, hbridge1a=%b, hbridge2a=%b, hbridge1b=%b, hbridge2b=%b",
                 sw, hbridge1a, hbridge2a, hbridge1b, hbridge2b);
    end


endmodule
