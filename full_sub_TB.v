`timescale 1ns / 1ps
module full_sub_TB();
reg x, y, z;
wire diff, borr;
full_sub s1(x, y, z, diff, borr);
initial
begin
x=0; y=0; z=0;
#5 x=0; y=0; z=1;
#5 x=0; y=1; z=1;
#5 x=0; y=1; z=0;
#5 x=1; y=0; z=1;
#5 x=1; y=1; z=0;
#5 x=1; y=0; z=0;
#5 x=1; y=1; z=1;
end
endmodule
