`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:38:51 PM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb(

    );
    
    reg clk;
    reg T;
    reg reset;
    wire Q;
    
    tff tff0(.clk(clk), .T(T), .reset(reset), .Q(Q));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        T = 0;
        reset = 1;
        
        
        #15 reset = 0;       
        #10 T = 1;          
        #10 T = 0;          
        #10 T = 1;        
        #10 reset = 1;      
        #10 reset = 0;      
        #10 T = 1;          
        #10;
        
        $stop;
    end
endmodule
