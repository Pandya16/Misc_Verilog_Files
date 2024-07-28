`timescale 1ns / 1ps
module half_adder(a, b, cout, s);
input a, b;
output s, cout;
assign cout = a&b;
assign s = a^b; 
endmodule
