`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:54:55 PM
// Design Name: 
// Module Name: dff_asynchRST_tb
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


module dff_asynchRST_tb();
    reg d, rst, clk;
	wire q;
	
	dff_asynchRST dut(.d(d), .rst(rst), .clk(clk), .q(q));
	
	always #5 clk = ~clk;
	
	initial begin
		//note that rst is active high
		clk=0; d=0; rst=1;
		
		//d is 1 and rstn == 0, so q should be 1 on next posedge
		#15 rst = 0; d = 1;
		//d is still 1 but rstn == 1, so q should be 0 on next posedge
		#7 rst = 1;
		//d is changing while rst is still active, q -> 0
		#9 d = 0; #4 d = 1;
		//rstn is low again, so q should reflect d on next posedge
		#3 rst = 0;
		//d is low and should output to q
		#4 d = 0; #10;
		$stop;
	end
endmodule

