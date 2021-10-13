module regfile(WA2, WA1, WA0, LD_DATA, WR, CLRN, CLK, DATA0, DATA1, DATA2, DATA3, DATA4, DATA5, DATA6, DATA7);
	input WA2, WA1, WA0, WR, CLRN, CLK;
	input [3:0] LD_DATA;
	output [3:0] DATA0, DATA1, DATA2, DATA3, DATA4, DATA5, DATA6, DATA7;
	wire [7:0] YY;
	wire [3:0] VALUE0, VALUE1, VALUE2, VALUE3, VALUE4, VALUE5, VALUE6, VALUE7;
	
	Decoder3to8 my_decoder(.W({WA2, WA1, WA0}), .EN(WR), .Y(YY));
	
	reg4 myregister0 (.IN(LD_DATA), .LD(YY[0]), .CLK(CLK), .OUT(VALUE0), .CLRN(CLRN));
	reg4 myregister1 (.IN(LD_DATA), .LD(YY[1]), .CLK(CLK), .OUT(VALUE1), .CLRN(CLRN));
	reg4 myregister2 (.IN(LD_DATA), .LD(YY[2]), .CLK(CLK), .OUT(VALUE2), .CLRN(CLRN));
	reg4 myregister3 (.IN(LD_DATA), .LD(YY[3]), .CLK(CLK), .OUT(VALUE3), .CLRN(CLRN));
	reg4 myregister4 (.IN(LD_DATA), .LD(YY[4]), .CLK(CLK), .OUT(VALUE4), .CLRN(CLRN));
	reg4 myregister5 (.IN(LD_DATA), .LD(YY[5]), .CLK(CLK), .OUT(VALUE5), .CLRN(CLRN));
	reg4 myregister6 (.IN(LD_DATA), .LD(YY[6]), .CLK(CLK), .OUT(VALUE6), .CLRN(CLRN));
	reg4 myregister7 (.IN(LD_DATA), .LD(YY[7]), .CLK(CLK), .OUT(VALUE7), .CLRN(CLRN));
	
	assign DATA0 = VALUE0;
	assign DATA1 = VALUE1;
	assign DATA2 = VALUE2;
	assign DATA3 = VALUE3;
	assign DATA4 = VALUE4;
	assign DATA5 = VALUE5;
	assign DATA6 = VALUE6;
	assign DATA7 = VALUE7;
	
endmodule	