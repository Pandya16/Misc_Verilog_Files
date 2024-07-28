`timescale 1ns / 1ps
module half_sub_TB();
reg x, y;
wire diff, borr;
half_sub s1(x, y, diff, borr);
initial
begin
x=0; y=0;
#5 x=0; y=1;
#5 x=1; y=0;
#5 x=1; y=1;
end
endmodule
