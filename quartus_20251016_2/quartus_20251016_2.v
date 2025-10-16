module quartus_20251016_2(a,b,c, Y11, Y12, Y21, Y22, Y3, Y4);
	input a,b,c;
	output Y11, Y12,Y21, Y22, Y3,Y4;
	
	assign Y11 = a&(b|c);
	assign Y12 = (a&b)|(a&c);
	
	assign Y21 = a|(b&c);
	assign Y22 = (a|b)&(a|c);
	
	assign Y3 = a&(a|b);
	assign Y4 = a|(a&b);
endmodule