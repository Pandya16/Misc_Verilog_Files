`timescale 1ns / 1ps
module up_counter(clock_in, reset, counter_out);
input clock_in, reset;
reg clock_out;
output [3:0] counter_out;
reg [28:0] count=29'd0; reg [3:0] counter_up;
parameter divisor = 29'd200000000;
always @(posedge clock_in)
begin
count <= count+29'd1;
if(count >= (divisor-1))
count <= 29'd0;
clock_out<=(count+divisor/2)?1'b1:1'b0;
end
always @(posedge clock_out or posedge reset)
begin
if(reset)
counter_up<=counter_up+4'b0000;
else 
counter_up<=counter_up+4'b0001;
end
assign counter_out = counter_up;
endmodule
