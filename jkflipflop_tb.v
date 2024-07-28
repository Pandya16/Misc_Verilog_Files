`timescale 1ns / 1ps
module jkflipflop_tb();
reg clk;
reg rst_n;
reg j,k;
wire q, q_bar;
jk_flip_flop jk_ff(.clk(clk), .rst_n(rst_n), .j(j), .k(k), .q(q), .q_bar(q_bar));
initial 
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
rst_n=1;
j=0;
k=0;
#10 rst_n=0;
#10 rst_n=1;
#10 j=1; k=0;
#10 j=0; k=1;
#10 j=1; k=1;
#10 j=0; k=0;
#10 j=1; k=0;
#10 j=0; k=1;
#10 j=1; k=1;
#10 j=0; k=0;
#10
$finish;
end
endmodule
