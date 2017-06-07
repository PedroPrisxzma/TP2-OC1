module tb_memory(

	output reg tb_rw,
	output reg [31:0] tb_writeData,
	output reg [3:0] tb_address,
	input [31:0] tb_read
);

	reg clk = 0;

	memory instancias(
	
		.RW(tb_rw),		
		.WriteData(tb_writeData),
		.Address(tb_address),
		.ReadData(tb_read),
		.clk(clk)
	);	

	initial begin

		tb_rw = 1;
		tb_writeData = 42;
		tb_address = 1;

		$display("RESULTADO DO PERSON\n");
		$monitor("%d\n", tb_read);
	end

	always #5 clk = ~clk;

endmodule 