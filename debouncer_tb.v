`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:24:28 PM
// Design Name: 
// Module Name: debouncer_tb
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


module debouncer_tb();
	reg raw, clk;
	wire clean;
	
	debouncer dut(.raw(raw), .clk(clk), .clean(clean));
	
	always #5 clk = ~clk;
	
	initial begin
		clk = 0; raw = 0; #5;
		
		raw = 1; #10; //active for 1 cycles, clean -> 0
		raw = 0; #5;
		
		raw = 1; #81; //active >8 cycles, clean -> 1
		raw = 0; #9;
		
		
		raw = 1; #5; //active for 1/2 cycles, clean -> 0
		raw = 0; #5;
		
		raw = 1; #28; //active for just below 3 cycles, clean -> 0
		raw = 0; #2;
		
		raw = 1; #80; //active for 8 cycles, clean -> 0
		raw = 0; #10;
		
		$stop;
		
	
	end
endmodule