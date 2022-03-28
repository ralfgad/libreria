module my_ff_plus_f_synapsys_v2_cyv (

	input   clock,
	input   resetn,
	input   ivalid, 
	input   iready,
	output  ovalid, 
	output  oready,
	input   [31:0] datainC,	
	input   [31:0]  datainA0,
	input   [31:0] datainB0,
	input   [31:0]  datainA1,
	input   [31:0] datainB1,    
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
  assign ovalid = 1'b1;
  assign oready = 1'b1;
  wire [31:0] intermedio;

  reg [9:0][31:0] shifterC ;

  always @(posedge clock)
  begin
	shifterC<={datainC,shifterC[9:1]};
  end
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
	
	//latencia 10
	mac2_cyv_0002 mac_cyv_inst (
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a0      (datainA0),      //      a.a
		.b0      (datainB0),      //      b.b
		.a1      (datainA1),      //      a.a
		.b1      (datainB1),      //      b.b        
		.q      (intermedio)       //      q.q
	);
	//latencia 5
	suma_0002 mac_cyv_inst2 (
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a      (shifterC[0]),      //      a.a
		.b      (intermedio),      //      b.b
		.q      (dataout)       //      q.q
	);

	 
	 
endmodule
