`timescale 1ns / 1ps
module aoperators();
integer a,b,c;
real x,y,z;

initial begin
a=1;
b=9;
c=a+b;
$display("a=%0d b=%0d c=%0d", a,b,c);
x=4.235;
y=9.679;
z=x*y;
$display("x=%0.2f y=%0.2f z=%0.2f", x,y,z);
end
endmodule
