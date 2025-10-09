module quartus_20251009(
	A,B,C,Y11,Y12,Y13,Y14,Y21,Y22,Y23,Y24,R
);
	input A,B,C;
	output Y11,Y12,Y13,Y14;
	output Y21,Y22,Y23,Y24,R=0;
	wire NA1,NB1,NC1,NA2,NB2,NC2;
	
	nand U1(Y11,A,B,C);
	not U2 (NA1,A);
	not U3 (NB1,B);
	not U4 (NC1,C);
	or U5(Y12,NA1,NB1,NC1);
	
	nor U6(Y13,A,B,C);
	not U7 (NA2,A);
	not U8(NB2,B);
	not U9 (NC2,C) ;
	and U10(Y14,NA2,NB2,NC2);
	
	assign Y21=!(A&B&C);
	assign Y22=!A|!B|!C;
	assign Y23=!(A|B|C);
	assign Y24=!A&!B&!C;
endmodule