module Mux8_4b(W0, W1, W2, W3, W4, W5, W6, W7, S, F);
	input [3:0] W0, W1, W2, W3, W4, W5, W6, W7;
	input [2:0] S;
	output [3:0] F;
	wire [3:0] X1, X2, X3, X4, Y1, Y2;
	
	Mux2_4b Mux1_1 (W0, W1, S[0], X1);
	Mux2_4b Mux1_2 (W2, W3, S[0], X2);
	Mux2_4b Mux1_3 (W4, W5, S[0], X3);
	Mux2_4b Mux1_4 (W6, W7, S[0], X4);
	
	Mux2_4b Mux2_1 (X1, X2, S[1], Y1);
	Mux2_4b Mux2_2 (X3, X4, S[1], Y2);
	
	Mux2_4b Mux3_1 (Y1, Y2, S[2], F);
	
endmodule

module Mux2_4b(A, B, s, Out);
	input [3:0] A, B;
	input s;
	output [3:0] Out;
	
	assign Out = s == 0 ? A : B;

endmodule