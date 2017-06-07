module tb_adder32(

	output reg [31:0]tb_addA,
	output reg [31:0]tb_addB,
	input [31:0] tb_sum
);

	reg clk = 0;

	adder32 instancias(
	
		.AddA(tb_addA),
		.AddB(tb_addB),
		.clk(clk),
		.SumOut(tb_sum)
	);	

	initial begin

		tb_addA = 3847;
		tb_addB = 1364;

		$display("RESULTADO DO PERSON\n");
		$monitor("%d\n", tb_sum);
	end

	always #5 clk = ~clk;

endmodule 