`timescale 1ns / 1ps
module exnor_TB;
reg a,b;
wire f;
ex_nor x1(f, a, b);
initial
begin
a=1; b=0;
#5 a=0; b=1;
#5 a=0; b=0;
#5 a=1; b=1;
end
endmodule
