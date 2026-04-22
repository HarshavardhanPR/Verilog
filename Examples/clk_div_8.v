module clk_div_8 (input clk,rst,output reg q);
reg [2:0] count;
// count = 000 => 001 => 010 => 011 => 100 => 101 => 110 => 111
always@(posedge clk) begin
  if(rst) count <= 3'b000;
  else count <= count+1'b1;  
end    
  
assign q = count[2];
endmodule
