`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 10:28:58 AM
// Design Name: 
// Module Name: FourBitAddSub
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


module FourBitAddSub(

input [3:0] a,
     input [7:4] b,
     output [3:0] sum,
     input carry,
     output  cout 
     );
    
    logic cout1 , cout2 ,cout3;
    
     FullAdder a0(.sum(sum[0]),.carryout(cout1),.a(a[0]),.b(b[4] ^carry), .carry(carry));
     FullAdder a1(.sum(sum[1]),.carryout(cout2),.a(a[1]),.b(b[5] ^carry),.carry(cout1));
     FullAdder a2(.sum(sum[2]),.carryout(cout3),.a(a[2]),.b(b[6] ^carry),.carry(cout2));
     FullAdder a3(.sum(sum[3]),.carryout(cout),.a(a[3]),.b(b[7] ^carry),.carry(cout3));
    

endmodule
