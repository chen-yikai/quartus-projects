module quartus_20251218_JK(CK,J,K,Q,Qbar);
	input CK,J,K;
	output Q,Qbar;
	reg Q=1,Qbar;
	
	always @(posedge CK) begin
		if({J,K}==2'b11) {Q,Qbar}={!Q,!Qbar};
		if({J,K}==2'b10) {Q,Qbar}={1'b1,1'b0};
		if({J,K}==2'b01) {Q,Qbar}={1'b0,1'b1};
	end
endmodule
