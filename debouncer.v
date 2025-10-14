module debouncer(input raw, clk, output reg clean);
	wire TC; //"boolean", indicate when we can consider the signal
	reg[2:0] counter; //count how many clk cycles raw is active for
	
	// implement counter
	always @ (posedge clk) begin
		if (~raw) counter <= 3'b000;
		else counter <= counter + 3'b1;
	end
	
	//when we reach 8 cycles with button pressed, then we toggle on clean
	assign TC = (counter == 3'b111);
	
	//turn on clean using TC; do this synchronously
	always @ (posedge clk) begin
		if (~raw) clean <= 1'b0;
		else if (TC) clean <= 1'b1;
	end
endmodule