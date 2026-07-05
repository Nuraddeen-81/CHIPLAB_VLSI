module ripple_carry_adder_4bit_tb;

reg a0,a1,a2,a3;
reg b0,b1,b2,b3;
reg cin;

wire sum0,sum1,sum2,sum3;
wire cout;

ripple_carry_adder_4bit dut (
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .b0(b0),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .cin(cin),
    .sum0(sum0),
    .sum1(sum1),
    .sum2(sum2),
    .sum3(sum3),
    .cout(cout)
);

initial begin

    $monitor("Time=%0t a=%b%b%b%b b=%b%b%b%b sum=%b%b%b%b cout=%b",
          $time,
          a3,a2,a1,a0,
          b3,b2,b1,b0,
          sum3,sum2,sum1,sum0,
          cout);

 a3=0; a2=0; a1=0; a0=0;
    b3=0; b2=0; b1=0; b0=0;
    cin=0;
    #10;

    // Test 2: 0011 + 0101
    a3=0; a2=0; a1=1; a0=1;
    b3=0; b2=1; b1=0; b0=1;
    cin=0;
    #10;

    // Test 3: 1010 + 0101
    a3=1; a2=0; a1=1; a0=0;
    b3=0; b2=1; b1=0; b0=1;
    cin=0;
    #10;

    // Test 4: 1111 + 0001
    a3=1; a2=1; a1=1; a0=1;
    b3=0; b2=0; b1=0; b0=1;
    cin=0;
    #10;

    // Test 5: 1100 + 0011 + Cin
    a3=1; a2=1; a1=0; a0=0;
    b3=0; b2=0; b1=1; b0=1;
    cin=1;
    #10;

    // Test 6: 1111 + 1111 + Cin
    a3=1; a2=1; a1=1; a0=1;
    b3=1; b2=1; b1=1; b0=1;
    cin=1;
    #10;

    $finish;

end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, ripple_carry_adder_4bit_tb);
end

endmodule
