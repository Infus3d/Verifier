module FA(X, Y, Cin, Cout, S);
	input Cin, X, Y;
	output S, Cout;
	
	assign S = (X ^ Y) ^ Cin;
	assign Cout = (X & Y) | (X & Cin) | (Y & Cin);

endmodule