module comparator_1bit(a, b, g, l, e);

input a, b;
output g, l, e;

assign g = a & ~b;
assign l = ~a & b;
assign e = (~a & ~b) | (a & b);

endmodule
