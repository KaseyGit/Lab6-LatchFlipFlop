module Counters(input clk, input reset, output Q1, Q2, Q3);
	wire tt2, tt3;

	tff tff1(.clk(clk), .T(1'b1), .reset(reset), .Q(Q1));
	assign tt2 = Q1;
	tff tff2(.clk(clk), .T(tt2), .reset(reset), .Q(Q2));
	assign tt3 = Q1 & Q2;
	tff tff3(.clk(clk), .T(tt3), .reset(reset), .Q(Q3));
endmodule