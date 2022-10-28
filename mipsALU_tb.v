//mipsALU_tb.v
`timescale 1 ns/10 ps 

module mipsALU_tb;

	reg [7:0] a,b;
	reg [3:0] alu_ctl;
	
	wire[7:0] alu_out;
	wire zero;
	localparam period = 5; 
	
	mipsALU DUT (.a(a), .b(b), .alu_ctl(alu_ctl), .alu_out(alu_out), .zero(zero));
	initial begin
		 $dumpfile("alu.vcd");
		 $dumpvars(1,mipsALU_tb);
		 alu_ctl = 4'b0000;
		 a = 0;
		 b = 1;
		 #period; // wait for period	
 		 alu_ctl = 4'b0001;
		 a = 0;
		 b = 1;
		 #period; // wait for period
 		 alu_ctl = 4'b0010;
		 a = 0;
		 b = 1;
		 #period; // wait for period
 		 alu_ctl = 4'b0110;
		 a = 0;
		 b = 1;
		 #period; // wait for period
 		 alu_ctl = 4'b0111;
		 a = 0;
		 b = 1;
		 #period; // wait for period
 		 alu_ctl = 4'b1100;
		 a = 0;
		 b = 1;
		 #period; // wait for period 	 
	end
endmodule