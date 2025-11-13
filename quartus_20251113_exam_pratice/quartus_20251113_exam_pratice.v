module quartus_20251113_exam_pratice(
		input wire A,
		input wire B,
		input wire C,
		
		output wire a,
		output wire b,
		output wire c,
		output wire d,
		output wire e,
		output wire f,
		output wire g
	);
	assign a = (~B & ~C) | A;
	assign b = ~A | (~B & C) | B;
	assign c = ~A | ~C;
	assign d = (~B & ~C) | A;
	assign e = (A & C) | (A & B);
	assign f = A & ~C;
	assign g = (~B & ~C) | (A & C);
endmodule
