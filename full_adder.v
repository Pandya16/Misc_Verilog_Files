`timescale 1ns / 1ps
module full_adder(a, b, cin, s, cout);
input a, b, cin;
output s, cout;
wire ts, tc, tc2;
half_adder h1(a, b, tc, ts);
half_adder h2(ts, cin, tc2, s);
assign cout = tc^tc2;
endmodule
