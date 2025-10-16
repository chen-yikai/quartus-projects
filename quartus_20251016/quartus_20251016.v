module quartus_20251016 (
    input wire a,
    input wire b,
    output wire not_a,
    output wire and_ab,
    output wire or_ab,
    output wire nor_ab,
    output wire xor_ab,
    output wire xnor_ab
);

    // NOT
    nand (not_a, a, a);

    // AND
    wire nand_ab;
    nand (nand_ab, a, b);
    nand (and_ab, nand_ab, nand_ab);

    // OR
    wire not_a_wire, not_b_wire;
    nand (not_a_wire, a, a);
    nand (not_b_wire, b, b);
    nand (or_ab, not_a_wire, not_b_wire);

    // NOR 
    wire or_wire;
    nand (or_wire, not_a_wire, not_b_wire);
    nand (nor_ab, or_wire, or_wire);

    // XOR 
    wire nand1, nand2, nand3, nand4;
    nand (nand1, a, b);
    nand (nand2, a, nand1);
    nand (nand3, b, nand1);
    nand (xor_ab, nand2, nand3);

    // XNOR
    nand (xnor_ab, xor_ab, xor_ab);

endmodule
