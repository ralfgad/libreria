module my_ff_plus_f_synapsys_v_cyv_half (

	input   clock,
	input   resetn,
	input   ivalid, 
	input   iready,
	output  ovalid, 
	output  oready,
	input   [15:0] datainC,	
	input   [15:0]  datainA,
	input   [15:0] datainB,
	output   [15:0]  dataout);
	
	
	
	/*
  logic [31:0] result_float;
  logic [31:0] result_float_reg;
  logic [31:0] result_float_reg2;
  logic [15:0] resulta_sfixed;
  
  logic		valid_reg;
  logic 	valid_reg2;
  logic		valid_reg3;
  logic		valid_reg4;
  logic signed [31:0] resulta_sfixed_reg1;
  
  logic [15:0] datain_reg, datain_reg2,datain_reg3, datain_reg4;
  */
  assign ovalid = 1'b1;
  assign oready = 1'b1;
  // ivalid, iready, resetn are ignored
  
/*
	multiplicador_ff u0 ( //latencia de 3
		.clk    (clock),    //   input,   width = 1,    clk.clk
		.areset (!resetn), //   input,   width = 1, areset.reset
		.a      (datainA),      //   input,  width = 32,      a.a
		.b      (datainB),      //   input,  width = 32,      b.b
		.q      (result_float)       //  output,  width = 32,      q.q
	);
	*/
	
	//latencia 9
	mac_cyv_half_0002 mac_cyv_inst (
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a      (datainA),      //      a.a
		.b      (datainB),      //      b.b
		.c      (datainC),      //      c.c
		.q      (dataout)       //      q.q
	);


	 
	 
endmodule
