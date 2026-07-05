module full_subtractor_struct_tb;

reg a, b, Bin;
wire Diff, Borrow;

full_subtractor_struct dut(
    .a(a),
    .b(b),
    .Bin(Bin),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin

    $monitor("Time=%0t a=%b a=%b Bin=%b Diff=%b Borrow=%b",
              $time, a, b, Bin, Diff, Borrow);

    // Test all combinations
    a=0; b=0; Bin=0;
    #10 a=0; a=0; Bin=1;
    #10 a=0; b=1; Bin=0;
    #10 a=0; b=1; Bin=1;
    #10 a=1; b=0; Bin=0;
    #10 a=1; b=0; Bin=1;
    #10 a=1; b=1; Bin=0;
    #10 a=1; b=1; Bin=1;

    #10 $finish; 

end

initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,full_subtractor_struct_tb);
end

endmodule
