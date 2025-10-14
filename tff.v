`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:37:54 PM
// Design Name: 
// Module Name: tff
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


module tff(
    input clk,
    input T,
    input reset,
    output reg Q
    );
    always@(posedge clk) begin
		if(reset)
			Q <= 0;
		else if (T)
			Q <= ~Q;
		else 
			Q <= Q;
		end 
	endmodule

module Counters(input clk, input reset, output Q1, Q2, Q3);
wire tt2, tt3;

tff tff1(.clk(clk), .T(1'b1), .reset(reset), .Q(Q1));
assign tt2 = ~Q1;
tff tff2(.clk(clk), .T(tt2), .reset(reset), .Q(Q2));
assign tt3 = (~Q1) & (~Q2);
tff tff3(.clk(clk), .T(tt3), .reset(reset), .Q(Q3));
endmodule
