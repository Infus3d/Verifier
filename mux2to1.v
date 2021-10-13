module mux2to1(i0, i1, sel, mxout);
	input i0, i1, sel;
	output mxout;
	
	assign mxout = sel == 0 ? i0 : i1;

endmodule