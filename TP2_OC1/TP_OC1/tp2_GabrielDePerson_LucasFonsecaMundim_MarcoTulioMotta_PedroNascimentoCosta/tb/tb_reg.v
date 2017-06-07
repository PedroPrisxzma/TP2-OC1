module tb_reg(

	output reg tb_Read,
  	output reg tb_Write,
	output reg [3:0] tb_Ra,
	output reg [3:0] tb_Rb,
	output reg [31:0] tb_data,
	input [31:0] tb_outA,
	input [31:0] tb_outB
);

	reg clk = 0;

	RegBase instancias(
	
		.Read(tb_Read),
		.Write(tb_Write),
		.Ra(tb_Ra),
		.Rb(tb_Rb),
		.Data(tb_data),
		.OutA(tb_outA),
		.OutB(tb_outB),
		.clk(clk)
	);	

	initial begin

		tb_Read = 1;
		tb_Write = 1;
		tb_Ra = 1;
		tb_Rb = 1;
		tb_data = 42;

		$display("RESULTADO DO PERSON\n");
		$monitor("%d\n", tb_outA);
		$monitor("%d\n", tb_outB);
	end

	always #5 clk = ~clk;

endmodule 