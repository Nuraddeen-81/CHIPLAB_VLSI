module comparator_1bit_tb;

reg a, b;
wire g, l, e;

comparator_1bit dut(a, b, g, l, e);

initial begin
    $monitor("a=%b b=%b | g=%b l=%b e=%b",
              a, b, g, l, e);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;

    #10 $finish;
end

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, comparator_1bit_tb);
end

endmodule
