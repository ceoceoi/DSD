`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 01:37:25 PM
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb;
logic a,b,carry;
logic sum,carryout;
    FullAdder dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry),
 .carryout(carryout)
    
);
    
    initial begin
    
    
    $monitor("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, carry, sum, carryout);
    
    end


     initial begin
   
a = 0; b = 0; carry=0 ; #10;
a = 0; b = 1; carry=0 ; #10;
a = 1; b = 0; carry=0 ; #10;
a = 1; b = 1; carry=0 ; #10;
a = 0; b = 0; carry=1 ; #10;
a = 0; b = 1; carry=1 ; #10;
a = 1; b = 0; carry=1 ; #10;
a = 1; b = 1; carry=1 ; #10;






$finish;

    end
endmodule

