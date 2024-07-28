`timescale 1ns / 1ps
module full_sub(x, y, z, diff, borr);
input x, y, z;
output diff, borr;
wire t1, t2, t3;
half_sub hs1(t1, t2, x, y);
half_sub hs2(diff, t3, t, 2);
or(borr, t2, t3);
endmodule
