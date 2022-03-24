module my_ff_plus_f_synapsys_h_cyv (

	input   clock,
	input   resetn,
	input   ivalid, 
	input   iready,
	output reg ovalid, 
	output  oready,
	input    control,	
	input   [31:0]  datainA,
	input   [31:0] datainB,
	output   [31:0]  dataout);
	
	
	
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
 // assign ovalid = 1'b1;
  assign oready = 1'b1;
  // ivalid, iready, resetn are ignored
  
  reg [2:0] shifter ;
  reg [2:0] shifter_valid;
  reg [1:0] count;
  wire empieza_acumular;
  wire enable_magico;
  wire [31:0] datainC ;
  //assign datainC=control?32'h00000000: dataout;
  always @(posedge clock)
  begin
	shifter<={control,shifter[2:1]};
	shifter_valid<={ivalid,shifter_valid[2:1]};
	if (enable_magico)
		if(empieza_acumular)
		begin
		    count<=0;
			ovalid<=1'b0;
		end
		else
		begin
			count<=count+1;
			if(count>=2)
				ovalid<=1'b1;
			else
				ovalid<=1'b0;
	
			if(count==3)
					count<=count-1;
		end
	else
	begin
			ovalid<=1'b0;			
			if(count==3)
					count<=count-1;
	end
   end
  assign empieza_acumular = shifter[0];
 // assign ovalid = shifter_valid[0];
  assign enable_magico=shifter_valid[0]; //genial
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
	idea2_0002 mult_inst ( //latencia 3
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a      (datainA),      //      a.a
		.b      (datainB),      //      b.b
//		.c      (datainC),      //      c.c
		.q      (datainC)       //      q.q
	);
     accu_0002  acc_int (
	 	.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (enable_magico),     //     en.en
		.x      (datainC),      //      a.a
		.n      (empieza_acumular),      //      b.b
        .r      (dataout)
	);
	 
	 
endmodule
