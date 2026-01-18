`timescale 1ns / 1ps
module tff(T,clk,rst,Q,Qb);
input T,clk,rst;
output reg Q,Qb;
wire In;
always@(posedge clk or posedge rst)begin
if (rst) begin
    Q<=0;
    Qb<=1;
end
else if(!T) 
begin
   Q<=Q;
   Qb<=Qb;
end
else if(T)
begin
    Q<=~Q;
    Qb<=~Qb;
end
end
endmodule
