module AND_Gate32bit(
    input [31:0] A,
    input [31:0] B,
    output [31:0] HasilANDLogic
);

    assign HasilANDLogic = A & B;

endmodule

module OR_Gate32bit(
    input [31:0] A,
    input [31:0] B,
    output [31:0] HasilORLogic
);

    assign HasilORLogic = A | B;

endmodule

module XOR_Gate32bit(
    input [31:0] A,
    input [31:0] B,
    output [31:0] HasilXORLogic
);

    assign HasilXORLogic = A ^ B;

endmodule

module INVERTER_32bit(
    input [31:0] A,
    output [31:0] HasilINVERTER
);

    assign HasilINVERTER = ~A;

endmodule

