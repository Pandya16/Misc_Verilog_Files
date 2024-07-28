`timescale 1ns / 1ps
module mux2to1(i0, i1, s, o);
input i0;
input i1;
input s;
output o;
assign o=s?i1:i0;
endmodule
