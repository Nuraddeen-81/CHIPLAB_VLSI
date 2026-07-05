module full_adder (

input a,b,cin,
output sum, cout
);

wire w1,w2,w3;

xor (sum,a,b,cin);
and g1 (w1,a,b);
and g2 (w2,a,cin);
and g3 (w3,b,cin);

or (cout,w1,w2,w3);

endmodule

module ripple_carry_adder_4bit (

input a0,a1,a2,a3,
input b0,b1,b2,b3,
input cin,
output sum0,sum1,sum2,sum3,
output cout
);

wire c1,c2,c3;

full_adder fa0 (.a(a0), .b(b0), .cin(cin), .sum(sum0), .cout(c1));
full_adder fa1 (.a(a1), .b(b1), .cin(c1), .sum(sum1), .cout(c2));
full_adder fa2 (.a(a2), .b(b2), .cin(c2), .sum(sum2), .cout(c3));
full_adder fa3 (.a(a3), .b(b3), .cin(c3), .sum(sum3), .cout(cout));

endmodule
