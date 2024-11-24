`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 01:34:36 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
input logic a,
input logic b,
input logic carry,
output logic sum,
output logic carryout
);

logic t1, t2, t4;
halfAdder Ha0( .sum(t1), .carry(t2) , .a(a) , .b (b) );

halfAdder Ha1( .sum(sum) , .carry(t4) ,.a(t1) , .b (carry) );

or(carryout, t4, t2);













endmodule
