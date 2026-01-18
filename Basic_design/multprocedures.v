`timescale 1ns / 1ps
//Multiple procedural statements
module multprocedures();
reg x = 1'b0;
reg y = 1'b1;
reg z;

always @(z) begin //1st procedure block
$display("\nx=%b, y=%b, z=%b",x,y,z);
end

initial begin //second procedure block
#10 z=~x;
#10 z=x|y;
#10 z= 1;
#10 z=~x;
#10 z=x^x;
#10 z= 0;
#10 z= 1;
#10 z= 0;
#10 z= 1;
#10 z= 0;
#10 z= 1;#10 z= 1;
#10 z= 1;
#10 z= &x;
#10 z= 1;
#10 z= y;
#10 z= 0;

end
endmodule
