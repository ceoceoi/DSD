
`timescale 1ns / 1ps


module tb_halfAdder;
    logic a ,b ,sum ,carry;
    
    halfAdder dut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry),
    
);
    
    initial begin
    
    $display("Time\t a\t b\t sum carry");
$display("------------------------");
a = 0; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum ,carry);

$finish;

    end
endmodule