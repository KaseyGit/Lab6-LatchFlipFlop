module dff_asynchRST (input d, rstn, clk, output reg q);
	always @ (posedge clk or negedge rstn) begin
		if (!rstn) q <= 0;
		else q <= d;
	end
endmodule