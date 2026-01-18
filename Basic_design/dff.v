`timescale 1ns/1ps

module dff(input d, input clk, input rst, output reg q, output reg q_bar);
always @ (posedge clk or negedge rst) begin // asynchronous reset (if we are not using rst in the sensitivity list then it makes a synchronous rst controlled device)
if(rst)begin  q<=0; q_bar<=1; end
else begin q <= d;  q_bar<=~d; end
end
endmodule