module quartus_20251002(A,B,C,AND,OR,NAND,NOR,XOR,XNOR,R);
input A,B,C;
output AND,OR,NAND,NOR,XOR,XNOR;
output R=0;

and UI(AND,A,B,C);
or U2(OR,A,B,C);
nand U3(NAND,A,B,C);
nor U4(NOR,A,B,C);
xor U5(XOR,A,B,C);
xnor U6(XNOR,A,B,C);

endmodule