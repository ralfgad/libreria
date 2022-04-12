module product_half_0003(
	input   clk,
	input   areset,
    input   en,
	input   [15:0]  a,
    input   [15:0]  b,  
	output logic  [15:0]  q
);

logic signed [17:0] datoa,datob, datoa_reg,datob_reg;
logic signed [15:0] pre_salida;
logic signed [35:0] operacion_producto;


Float2Fixed 
#(.FIXEDSIZE(18),
.FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
) 
float2fixA (
   .InFloat(a),
   .InRadixPoint(9),
   .OutFixed(datoa),
    .OutException(),
    .OutOverflow()

   );
   Float2Fixed 
   #(.FIXEDSIZE(18),
   .FLOATSIZE(16),
   .MANTISSABITS(10),
   .EXPONENTBITS(5)
   ) 
   float2fixB (
      .InFloat(b),
      .InRadixPoint(9),
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
            operacion_producto<='0;
            q<='0;
            

        end
        else begin
            datob_reg<=datoa;
            datoa_reg<=datob;
            q<=pre_salida;        
            operacion_producto<=datoa_reg*datob_reg;
        end
    end
    


Fixed2Float #(.FIXEDSIZE(32),
 .FLOATSIZE(16),
.MANTISSABITS(10),
.EXPONENTBITS(5)
 )
 fix2float (
    .InFixed(operacion_producto[35:4]),
    .InRadixPoint(14),
    .OutFloat(pre_salida)
    ); 	
endmodule