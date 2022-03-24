// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module my_fp_dtanh_fp162float (

	input   clock,
	input   resetn,
	input   ivalid, 
	input   iready,
	output  ovalid, 
	output  oready,
	input   [15:0]  datain,
	output  [31:0]  dataout);
	
	
  assign ovalid = 1'b1;
  assign oready = 1'b1;
  // ivalid, iready, resetn are ignored
  

	top_dtanh_fp162f	inst(
				.clk(clock),
				.enable(1'b1),
				.num_entrada(datain),
				.num_salida(dataout));

endmodule
