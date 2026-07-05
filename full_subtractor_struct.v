module full_subtractor_struct(
    input a,
    input b,
    input Bin,
    output Diff,
    output Borrow
);

wire x1, nA, nX;

// Difference
xor g1(x1, a, b);
xor g2(Diff, x1, Bin);

// Borrow
not g3(nA, a);
not g4(nX, x1);

and g5(w1, nA, b);
and g6(w2, Bin, nX);

or  g7(Borrow, w1, w2);

endmodule
