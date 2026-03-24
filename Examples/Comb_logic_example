module combo ( 	input 	a, b, c, d, e,
								output 	z);

	assign z = ((a & b) | (c ^ d) & ~e);
endmodule
/* // using always block
module combo ( 	input 	a, b, c, d, e,
								output 	reg z);

	always @ ( a or b or c or d or e) begin
		z = ((a & b) | (c ^ d) & ~e);
	end
endmodule
*/
