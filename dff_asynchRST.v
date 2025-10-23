`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:53:28 PM
// Design Name: 
// Module Name: dff_asynchRST
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


module dff_asynchRST (input d, rst, clk, output reg q);
	always @ (posedge clk or posedge rst) begin
		if (rst) q <= 0;
		else q <= d;
	end
endmodule
