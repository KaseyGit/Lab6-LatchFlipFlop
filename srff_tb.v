`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:11:49 PM
// Design Name: 
// Module Name: srff_tb
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


module srff_tb();
reg S, R, CLK;
wire Q, QBAR;

srff dut(.Q(Q), .QBAR(QBAR), .S(S), .R(R), .CLK(CLK)); 

initial begin
	CLK = 0;
	forever #10 CLK = ~CLK;
	end 
	initial begin 
	S = 1; R = 0;
	#100; S=0; R=1;
	#100; S=0; R=0;
	#100; S=1; R=1;
	#100;
	$stop;
	end
endmodule
