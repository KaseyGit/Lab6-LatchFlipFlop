module dff_synchRST_tb();
	wire d, rstn, clk;
	reg q;
	reg [2:0] delay;
	
	dff_synchRST dut(.d(d), .rstn(rstn), .clk(clk), .q(q));
	
	always #10 clk = ~clk;
	
	integer i;
	initial begin
		clk=; d=0; rstn=0;
		
		#15 d = 1;
		#10 rstn = 1;
		for (i = 0; i < 5; i = i+1) begin
			delay = $random;
			#{delay} d = ~d;
		end
		$stop;
	end
endmodule