module tb_HalfAdder();
    reg a, b;
    wire sum, carry;

    HalfAdder uut(.A(a), .B(b), .sum(sum), .carry(carry));

    initial begin  
        $dumpfile("HalfAdder.vcd");
        $dumpvars(0, tb_HalfAdder);
        $monitor("a = %b , b = %b, sum = %b, carry = %b,", a, b, sum, carry); 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
    end

endmodule