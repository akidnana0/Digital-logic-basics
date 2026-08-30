`timescale 1ns/1ps

module tb_AND_Gate32bit();
    reg [31:0] A, B;
    wire [31:0] HasilANDLogic;

    AND_Gate32bit uut(.A(A), .B(B), .HasilANDLogic(HasilANDLogic));
    initial begin
        $dumpfile("AND_Gate32bit.vcd");
        $dumpvars(0, tb_AND_Gate32bit);
        $monitor("A = %h, B = %h, HasilANDLogic = %h,", A, B, HasilANDLogic); 

        A = 32'h0000_0000; B = 32'h0000_0000; #1;
        A = 32'hFFFF_FFFF; B = 32'hFFFF_FFFF; #1;
        A = 32'hFFFF_FFFF; B = 32'h0000_0000; #1;
        A = 32'hAAAA_AAAA; B = 32'h5555_5555; #1;
        A = 32'hAAAA_AAAA; B = 32'hAAAA_AAAA; #1;
        A = 32'hFFFF_0000; B = 32'h0000_FFFF; #1;
        A = 32'hFFFF_0000; B = 32'hFFFF_FFFF; #1;
        A = 32'hF0F0_F0F0; B = 32'h0F0F_0F0F; #1;
        A = 32'h1234_5678; B = 32'h8765_4321; #1;
        A = 32'h9ABC_DEF0; B = 32'hFFFF_0000; #1;

        $finish;
    end

endmodule