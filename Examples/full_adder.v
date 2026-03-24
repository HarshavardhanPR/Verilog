module fa (	input 	a, b, cin,
						output 	sum, cout);

	assign sum = (a ^ b) ^ cin;
	assign cout = (a & b) | ((a ^ b) & cin);
endmodule

/*
module fa (	input 	a, b, cin,
			output reg	sum, cout);

 always @ (a or b or cin) begin
   {cout, sum} = a + b + cin;
 end
endmodule
*/
