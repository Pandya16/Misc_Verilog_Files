`timescale 1ns / 1ps
module ex_nor(f, a, b);
input a, b;
output f;
wire t1, t2, t3;
nand #5 m1(t, a, b);
and #5 m2(t2, a, t1);
and #5 m3(t3, t1, b);
nor #5 m4(f, t2, t3);
endmodule

