module mac_cyv_half_0004(
	input   clk,
	input   areset,
    input   en,
	input   [15:0]  a,
    input   [15:0]  b,
	input   [31:0]  c,    
	output logic  [31:0]  q
);

logic signed [19:0] datoa,datob, datoa_reg,datob_reg;
logic signed [15:0] pre_salida;
logic signed [39:0] operacion_producto;
logic signed [31:0] sumatorio,datoc,datoc_reg, datoc_reg2;


Float2Fixed 
#(.FIXEDSIZE(20),
.FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
) 
float2fixA (
   .InFloat(a),
   .InRadixPoint(10),
   .OutFixed(datoa),
    .OutException(),
    .OutOverflow()

   );
   Float2Fixed 
   #(.FIXEDSIZE(20),
   .FLOATSIZE(16),
   .MANTISSABITS(10),
   .EXPONENTBITS(5)
   ) 
   float2fixB (
      .InFloat(b),
      .InRadixPoint(10),
      .OutFixed(datob),
       .OutException(),
       .OutOverflow()
   
      );
  



always_ff @(posedge clk or posedge areset) 
    begin
        if (areset)
        begin
            datob_reg<='0;
            datoa_reg<='0;
            datoc_reg<='0;
            datoc_reg2<='0;
            operacion_producto<='0;
            sumatorio<='0;
            q<='0;
            

        end
        else begin
            datob_reg<=datoa;
            datoa_reg<=datob;
            datoc_reg<=c;  
            datoc_reg2<=datoc_reg; 
            q<=sumatorio;        
            operacion_producto<=datoa_reg*datob_reg;
            sumatorio<=operacion_producto[31:0]+datoc_reg2;
        end
    end
overflow0: assert property (@(negedge clk) disable iff(operacion_producto==='x)   (operacion_producto[39]==operacion_producto[31])) else $error("overflow en producto");
   
overflow1: assert property (@(negedge clk) disable iff(sumatorio==='x )  (((operacion_producto[31]==1'b0) && (datoc_reg2[31]==1'b0) ) |=> (sumatorio[31]==1'b0) )) else $error("overflow1 en el sumador encadenado synapsys vertical");
overflow2: assert property (@(negedge clk) disable iff(sumatorio==='x )  (((operacion_producto[31]==1'b1) && (datoc_reg2[31]==1'b1) ) |=> (sumatorio[31]==1'b1) )) else $error("overflow2 en el sumador encadenado synapsys vertical");




endmodule