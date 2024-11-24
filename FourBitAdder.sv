`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:31:07 AM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(

 input [3:0] a,
     input [7:4] b,
     output [3:0] sum,
     input carry,
     output  cout 
     );
    
    logic cout1 , cout2 ,cout3;
    
     FullAdder a0(.sum(sum[0]),.carryout(cout1),.a(a[0]),.b(b[4]),.carry(carry));
     FullAdder a1(.sum(sum[1]),.carryout(cout2),.a(a[1]),.b(b[5]),.carry(cout1));
     FullAdder a2(.sum(sum[2]),.carryout(cout3),.a(a[2]),.b(b[2]),.carry(cout2));
     FullAdder a3(.sum(sum[3]),.carryout(cout),.a(a[3]),.b(b[3]),.carry(cout3));
    

endmodule
