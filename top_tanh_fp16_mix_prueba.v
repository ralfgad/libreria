module top_tanh_fp16_mix_prueba (
          input [31:0] num_entrada,
          output [15:0] num_salida,
		  input enable,
          input clk
          );


localparam uno= 15'h3c00;			 
wire [10:0] salida_fix;
wire [9:0] addr;
wire [19:0] q;
wire [15:0] salida_float,num_salida_reg2 ;
reg [31:0]  num_entrada_reg1;
reg [15:0]   num_salida_reg3,num_salida_reg4;
wire idea;
wire [9:0] otra_idea;
wire [14:0] valor;
wire signo=num_entrada_reg1[31];

wire [31:0] modulo;

reg signo_reg,over_reg;





//assign addr=salida_fix[11:0];  

assign modulo =signo? ((~num_entrada_reg1)+1): num_entrada_reg1;
assign addr=modulo[21:12];
assign otra_idea=modulo[31:22];

tabla_tangente_20k #( .DATA_WIDTH(20), .ADDR_WIDTH(10) ) my_memory  //forma parte del ciclo 2
						(   
                              .dataa(addr),
                              .clk(clk),
                              .result(q)
                              );
								
Fixed2Float #(.FIXEDSIZE(21),
 .FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
 )
 fix2float (
    .InFixed({1'b0,q}),
    .InRadixPoint(20),
    .OutFloat(salida_float)
    ); 								

always @(posedge clk)
if (enable==1'b1)
begin
signo_reg<=signo; //forma parte del ciclo 2
over_reg<=otra_idea!=0; //formaparte del ciclo2
num_entrada_reg1<=num_entrada;//ciclo 1
num_salida_reg3<=num_salida_reg2;//ciclo 3
num_salida_reg4<=num_salida_reg3; //ciclo4
end	 

assign valor= over_reg?uno:salida_float[14:0];
assign num_salida_reg2 = {signo_reg, valor};

assign num_salida=num_salida_reg4;       
endmodule
