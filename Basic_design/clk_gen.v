`timescale 1ns/1ps
module clk_gen ();

parameter clk1_gen_delay = 0.5;
parameter clk2_gen_delay = 0.25;

reg clk1;
reg clk2 = 0;
reg clk3;

initial begin
clk1=0;
forever begin
#clk1_gen_delay; clk1=~clk1;
end
end

always begin
#clk2_gen_delay; clk2=~clk2;
end

initial begin
clk3=0;
forever begin
clk3=1; #(0.3);
clk3=0; #(0.7);
end
end

initial begin
#400; $stop;
$display ("end of clkgen");
end 

endmodule