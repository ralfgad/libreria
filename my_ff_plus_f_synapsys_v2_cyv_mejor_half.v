module my_ff_plus_f_synapsys_v2_cyv_half (

	input   clock,
	input   resetn,
	input   ivalid, 
	input   iready,
	output  ovalid, 
	output  oready,
	input   [15:0] datainC,	
	input   [15:0]  datainA0,
	input   [15:0] datainB0,
	input   [15:0]  datainA1,
	input   [15:0] datainB1,    
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
  wire [15:0] intermedio;

  reg [8:0][15:0] shifterC ;

  always @(posedge clock)
  begin
	shifterC<={datainC,shifterC[8:1]};
  end
  // ivalid, iready, resetn are ignored
  

	
	//latencia 9
	mac2_cyv_half_0002 mac_cyv_inst (
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a0      (datainA0),      //      a.a
		.b0      (datainB0),      //      b.b
		.a1      (datainA1),      //      a.a
		.b1      (datainB1),      //      b.b        
		.q      (intermedio)       //      q.q
	);
	//latencia 4
	suma_half_0002 mac_cyv_inst2 (
		.clk    (clock),    //    clk.clk
		.areset (!resetn), // areset.reset
		.en     (1'b1),     //     en.en
		.a      (shifterC[0]),      //      a.a
		.b      (intermedio),      //      b.b
		.q      (dataout)       //      q.q
	);

	 
	 
endmodule
