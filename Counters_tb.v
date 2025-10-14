`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:40:32 PM
// Design Name: 
// Module Name: Counters_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Counters_tb();

    reg clk, reset;
    wire Q3, Q2, Q1;
    
    Counters dut(.clk(clk), .reset(reset), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0; reset = 1; #15;
        reset = 0;
        #200;
        $stop;
    end
endmodule
