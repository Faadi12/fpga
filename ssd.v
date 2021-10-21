`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:10 10/18/2021 
// Design Name: 
// Module Name:    ssd 
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
module ssd(
    input [3:0] bcd,
    output reg [6:0] ssd,
    output [3:0] sel
    );
	 assign sel=4'b0111;
	 always@(bcd)
	 case(bcd)
	 0:ssd=7'b1000000;
	 1:ssd=7'b1111001;
	 2:ssd=7'b0100100;
	 3:ssd=7'b0110000;
	 4:ssd=7'b0011001;
	 5:ssd=7'b0010010;
	 6:ssd=7'b0000010;
	 7:ssd=7'b1111000;
	 default:ssd=7'b1111111;
	 endcase
endmodule
