`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:24:19 PM
// Design Name: 
// Module Name: dff_synchRST
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


module dff_synchRST(
    input d,
    input rst,
    input clk,
    output reg q
    );
    always @ (posedge clk) begin
		if (rst) q <= 0;
		else q <= d;
	end
endmodule
