module clk_div_4 (input clk,rst,output reg q);
reg [1:0] count;
// count = 00 => 01 => 10 => 11
always@(posedge clk) begin
  if(rst) count <= 2'b00;
  else count <= count+1'b1;  
end    
  
assign q = count[1];
endmodule
