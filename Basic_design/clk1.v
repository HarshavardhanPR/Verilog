`timescale 1ns / 1ps
module clk1(input rst, output reg clk);

parameter freq = 100000;
parameter phase = 0;
parameter duty = 50;

real t_pd = 1/(freq*1e3)*1e9;
real t_on = (duty/100) * t_pd;
real t_off = (100-duty)/100 * t_pd;
real quarter = clk_pd/4;
real start_dly = quarter*phase/90;

reg start_clk


endmodule
