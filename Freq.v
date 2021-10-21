`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:04 10/18/2021 
// Design Name: 
// Module Name:    Freq 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Freq(
    input rst,
    input clk,
    output reg fout
    );
    integer count;
	always@(posedge clk)
	begin
	    if(rst)
		 begin
		 count = 0;
		 fout = 0;
		 end
		 else if(count<24999999)
		 count = count+1;
		 else
		 begin
		 fout = ~fout;
		 count = 0;
		 end
	end
endmodule
