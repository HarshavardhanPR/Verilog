module clk_div_2 (input clk,rst,output reg q);
always@(posedge clk) begin
    if(rst) q <= 1'b0;
    else q <= ~q;  
end    
endmodule
