module quartus_20251030_HS(input a, input b,output diff,output bo);
	assign diff = a ^ b;
	assign bo = (~a) & b;
endmodule