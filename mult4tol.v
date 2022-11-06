//mult4tol.v

module mult4tol (in1,in2,in3,in4,sel,out);
	input [31:0] in1, in2, in3, in4; //four 32-bit inputs
	input [1:0] sel; //selector signal
	output reg [31:0] out; // 32-bit output
	always @(in1, in2, in3, in4, sel) begin
		case(sel) //4->1 multiplexor inputs on a and b
			2'b00 : out = in1;
			2'b01 : out = in2;
			2'b10 : out = in3;
			2'b11 : out = in4;
		endcase
	end
endmodule