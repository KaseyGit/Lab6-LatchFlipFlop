`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:03:38 PM
// Design Name: 
// Module Name: Clock_divider_tb
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


module Clock_divider_tb();
    
reg clock_in;
wire clock_out;

Clock_divider uut (.clock_in(clock_in),.clock_out(clock_out));
initial begin

clock_in = 0;

forever #5 clock_in = ~clock_in;
end

endmodule
