module quartus_20251204_demux(
    input I,
    input [1:0] S,
    output [3:0] O
);
    assign O[0] = I & ~S[1] & ~S[0];
    assign O[1] = I & ~S[1] &  S[0];
    assign O[2] = I &  S[1] & ~S[0];
    assign O[3] = I &  S[1] &  S[0];
endmodule