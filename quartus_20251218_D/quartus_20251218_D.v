module quartus_20251218_D(CK,D,Q,Qbar);
	input CK,D;
	output Q,Qbar;
	reg Q=0,Qbar=1;
	
	always @(posedge CK) begin
		if(D==1) {Q,Qbar}={1'b1,1'b0};
		else {Q,Qbar}={1'b0,1'b1};
	end
endmodule
