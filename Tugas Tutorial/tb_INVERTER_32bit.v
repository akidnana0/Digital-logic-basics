`timescale 1ns/1ps

module tb_INVERTER_32bit();
    reg [31:0] A;
    wire [31:0] HasilINVERTER;

    INVERTER_32bit uut(.A(A), .HasilINVERTER(HasilINVERTER));
    initial begin
        $dumpfile("INVERTER_32bit.vcd");
        $dumpvars(0, tb_INVERTER_32bit);
        $monitor("A = %h,  HasilINVERTER = %h,", A, HasilINVERTER); 

        A = 32'h0000_0000; #1;
        A = 32'h0000_FFFF; #1;
        A = 32'hFFFF_FFFF; #1;
        A = 32'hAAAA_0000; #1;
        A = 32'hAAAA_AAAA; #1;
        A = 32'h0F0F_0000; #1;
        A = 32'hFFFF_0000; #1;
        A = 32'hF0F0_F0F0; #1;
        A = 32'h1234_5678; #1;
        A = 32'h9ABC_DEF0; #1;

        $finish;
    end

endmodule