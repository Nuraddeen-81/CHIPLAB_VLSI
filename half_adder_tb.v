module half_adder_tb;

reg a,b;
wire sum,cout;

half_adder(a,b,sum,cout);

initial begin
	$monitor ("ab=%b, sum=%b, cout=%b",a,b,sum,cout);

	a=0; b=0;
	#10 a=0; b=1;
	#10 a=1; b=0;
	#10 a=1; b=1;
end

	initial begin
		$fsdbDumpfile("dump.fsdb");
		$fsdbDumpvars(0,half_adder_tb);

end
endmodule
