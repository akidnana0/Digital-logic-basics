module tb_XORGATE();
    reg A, B;
    wire Out;

    XORGATE uut(.A(A), .B(B), .Out(Out));

    initial begin  
        $dumpfile("XORGATE.vcd");
        $dumpvars(0, tb_XORGATE);
        $monitor("a = %b , b = %b, Output = %b,", A, B, Out); 
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
    end
    //guerzoniansus
endmodule