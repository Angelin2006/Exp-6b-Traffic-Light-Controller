`timescale 1ns / 1ps
module traffic_SH_tb; 
reg clk,rst;
wire[2:0]light;
traffic_SH uut(clk,rst,light);
initial clk=0;always#5 clk=~clk;
initial begin
rst=1;#10;rst=0;
#200$finish;
end
initial begin
$monitor("Time=%0t|Lights={Red,Yellow,Green}=%b",$time,light);
end 
endmodule
