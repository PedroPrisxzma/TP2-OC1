module RegBase(
  
  input clk, 
  input Read,
  input Write,
  input [3:0]Ra,
  input [3:0]Rb,
  input [31:0]Data,
 
 output reg [31:0]OutA,
 output reg [31:0]OutB 
);
  
  
  reg [31:0]regs[31:0]; 
  
  always @(posedge clk) begin
      
	if(Read) begin
		OutA <= regs[Ra];
		OutB <= regs[Rb];
	end	
  	if(Write)begin
		regs[Ra] <= Data;
	end
   end

endmodule
  