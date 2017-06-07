module memory(
  
  input clk, 
  input RW,			//define read(0) or write(1)
  input [31:0]WriteData,	//data to write
  input [3:0]Address,		//onde ler/escrever
  output reg [31:0]ReadData		//from memory
);
  
  reg [31:0]memory[1023:0];
  
  always @(posedge clk) begin
    
	if(RW) begin
		memory[Address] = WriteData;
	end
	else begin
		ReadData = memory[Address]; 
	end
		
  end

endmodule
  
  