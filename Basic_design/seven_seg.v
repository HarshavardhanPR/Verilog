`timescale 1ns / 1ps

module seven_seg(input [3:0] in, output reg a,b,c,d,e,f,g, output dot);
always @ (*) begin
case(in)
4'b0000 : {a,b,c,d,e,f,g} = 7'b1111110; // 0 = abcdef
4'b0001 : {a,b,c,d,e,f,g} = 7'b0110000; // 1 = bc
4'b0010 : {a,b,c,d,e,f,g} = 7'b1101101; // 2 = abdeg
4'b0011 : {a,b,c,d,e,f,g} = 7'b1111001; // 3 = abcdg;
4'b0100 : {a,b,c,d,e,f,g} = 7'b0110011; // 4 = bcfg;
4'b0101 : {a,b,c,d,e,f,g} = 7'b1011011; // 5 = acdfg;
4'b0110 : {a,b,c,d,e,f,g} = 7'b1011111; // 6 = acdefg;
4'b0111 : {a,b,c,d,e,f,g} = 7'b1110000; // 7 = abc;
4'b1000 : {a,b,c,d,e,f,g} = 7'b1111111; // 8 = abcdefg;
4'b1001 : {a,b,c,d,e,f,g} = 7'b1111011; // 9 = abcdfg;
4'b1010 : {a,b,c,d,e,f,g} = 7'b1110111; // A = abcefg;
4'b1011 : {a,b,c,d,e,f,g} = 7'b0011111; // b = cdefg;
4'b1100 : {a,b,c,d,e,f,g} = 7'b1001110; // c = adef;
4'b1101 : {a,b,c,d,e,f,g} = 7'b0111101; // d = bcdeg;
4'b1110 : {a,b,c,d,e,f,g} = 7'b1001111; // e = adefg;
4'b1111 : {a,b,c,d,e,f,g} = 7'b1000111; // f = aefg;
endcase
end
assign dot=1;
endmodule
