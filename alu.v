module alu  (input [WIDTH-1:0] a,b,
    input [3:0] opcode,
    output reg [WIDTH-1:0] y);
parameter WIDTH = 32;

        /* Decode the instruction */
	always @*
        	case (opcode)
                	4'h0 /* OR */:   y <= a | b;
                	4'h1 /* AND */:   y <= a & b;
                	4'h2 /* NOTA */:   y <= ~a;
                	4'h3 /* XOR */:   y <= a ^ b;
                	4'h4 /* ADD */:   y <= a + b;
                	4'h5 /* SUB */:   y <= a - b;
			4'h6 /* RSHIFT1 */: y <= a >> 1;
			4'h7 /* RSHIFTN */: y <= a >> b;
			default: y <= 8'bZ;
        	endcase
endmodule
