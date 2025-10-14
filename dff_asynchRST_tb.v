module dff_asynchRST_tb();
	wire d, rstn, clk;
	reg q;
	reg [2:0] delay;
	
	dff_synchRST dut(.d(d), .rstn(rstn), .clk(clk), .q(q));
	
	always #10 clk = ~clk;
	
	integer i;
	initial begin
		clk=0; d=0; rstn=1;
		
		//d is 1 and rstn == 0, so q should be 1 on next posedge
		#15 d = 1;
		//d is still 1 but rstn == 1, so q should be 0 on next posedge
		#7 rstn = 1;
		//d is changing while rst is still active, q -> 0
		#9 d = 0; #4 d = 1;
		//rstn is high again, so q should reflect d on next posedge
		#3 rstn = 1;
		//d is low and should output to q
		#4 d = 0; #10;
		$stop;
	end
endmodule