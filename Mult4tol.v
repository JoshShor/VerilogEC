//mult4tol.v

module Mult4tol (in1,in2,in3,in4,sel,out);
	input [31:0] in1, in2, in3, in4; //four 32-bit inputs
	input [1:0] sel; //selector signal
	output reg [31:0] out; // 32-bit output
	always @(in1, in2, in3, in4;, sel)begin
	case(sel) //a 4->1 multiplexor
		0: out <= in1;
		1: out <= in2;
		2: out <= in3;
		default: out <= in4;
	endcase
endmodule