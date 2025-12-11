module quartus_20251211_debounce1(R,S,Q,nQ);
	input R,S;
	output Q,nQ;
	reg Q,nQ;
	
	always @(R,S) begin
		if (S==0 & R==1)begin
			nQ=1;
			Q=0;
		end
		else if (S==1 & R==0) begin
			nQ=0;
			Q=1;
		end
	end
endmodule
