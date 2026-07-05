module full_subtractor_tb;

reg A, B, Bin;
wire D, Bout;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);

initial begin
    $monitor("A=%b B=%b Bin=%b D=%b Bout=%b",
              A, B, Bin, D, Bout);

    A = 0; B = 0; Bin = 0; 
   #10 A = 0; B = 0; Bin = 1;
   #10 A = 0; B = 1; Bin = 0;
   #10 A = 0; B = 1; Bin = 1;
   #10 A = 1; B = 0; Bin = 0;
   #10 A = 1; B = 0; Bin = 1;
   #10 A = 1; B = 1; Bin = 0;
   #10 A = 1; B = 1; Bin = 1;

end
endmodule
