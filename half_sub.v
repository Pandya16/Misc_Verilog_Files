`timescale 1ns / 1ps
module half_sub(diff, borr, x, y);
input x, y;
output diff, borr;
wire z;
xor (diff, x, y);
not(z, x);
and(borr, x, y);
endmodule
