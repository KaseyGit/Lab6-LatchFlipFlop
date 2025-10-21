module tff(
    input clk,
    input T,
    input reset,
    output reg Q
    );
    always@(posedge clk or reset) begin
		if(reset)
			Q <= 0;
		else if (T)
			Q <= ~Q;
		else 
			Q <= Q;
	end 
endmodule