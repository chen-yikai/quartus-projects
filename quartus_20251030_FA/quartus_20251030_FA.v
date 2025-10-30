module quartus_20251030_FA(a,b,ci,sum,co);
	input a,b,ci;
	output sum,co;
	wire n1,n2,n3;
	
	quartus_20251030 ha1(a,b,n1,n2);
	quartus_20251030 ha2(n1,ci,sum,n3);
	or or1(co,n2,n3);
endmodule