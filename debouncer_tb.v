module debouncer_tb();
	reg raw, clk;
	wire clean;
	
	debouncer dut(.raw(raw), .clk(clk), .clean(clean));
	
	always #5 clk = ~clk;
	
	initial begin
		clk = 0; raw = 0; #5;
		
		raw = 1; #10; //active for 1 cycles, clean -> 0
		raw = 0; #5;
		
		raw = 1; #40; //active >3 cycles, clean -> 1
		
		
		raw = 1; #5; //active for 1/2 cycles, clean -> 0
		raw = 0; #5;
		
		raw = 1; #28; //active for just below 3 cycles, clean -> 0
		raw = 0; #2;
		
		raw = 1; #32; //active for >3 cycles, clean -> 0
		raw = 0; #10;
		
		$stop;
		
	
	end
endmodule