module top_tanh_fp16 (
          input [15:0] num_entrada,
          output [15:0] num_salida,
		  input enable,
          input clk
          );


localparam uno= 15'h3c00;			 
wire [11:0] salida_fix;
wire [10:0] addr;
wire [9:0] q;
wire [15:0] salida_float,num_salida_reg2 ;
reg [15:0]  num_entrada_reg1, modulo;
reg [15:0]   num_salida_reg3,num_salida_reg4;
wire idea;
wire [5:0] otra_idea;
wire [14:0] valor;
wire signo=num_entrada_reg1[15];

reg signo_reg,over_reg;






//float_to_fix  my_float_to_fix(
//                      .num_float(num_entrada),
//                      .signo(signo),
//                      .valor(addr)
//                      );

 Float2Fixed 
 #(.FIXEDSIZE(12),
 .FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
 ) 
 float2fix (
    .InFloat({1'b0,num_entrada_reg1[14:0]}),
    .InRadixPoint(9),
    .OutFixed(salida_fix),
	 .OutException(),
	 .OutOverflow(otra_idea)

    ); 

//assign addr=salida_fix[11:0];  

//assign modulo =signo? ((~num_entrada_reg1)+1): num_entrada_reg1;
assign addr=salida_fix[10:0];

tabla_tangente_20k #( .DATA_WIDTH(10), .ADDR_WIDTH(11) ) my_memory  //forma parte del ciclo 2
						(   
                              .dataa(addr),
                              .clk(clk),
                              .result(q)
                              );
								
Fixed2Float #(.FIXEDSIZE(11),
 .FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
 )
 fix2float (
    .InFixed({1'b0,q}),
    .InRadixPoint(10),
    .OutFloat(salida_float)
    ); 								

always @(posedge clk)
if (enable==1'b1)
begin
signo_reg<=signo; //forma parte del ciclo 2
over_reg<=otra_idea>0; //formaparte del ciclo2
num_entrada_reg1<=num_entrada;//ciclo 1
num_salida_reg3<=num_salida_reg2;//ciclo 3
num_salida_reg4<=num_salida_reg3; //ciclo4
end	 

assign valor= over_reg?uno:salida_float[14:0];
assign num_salida_reg2 = {signo_reg, valor};

assign num_salida=num_salida_reg4;       
endmodule
