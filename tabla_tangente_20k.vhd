LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.math_real.all;
use work.fixed_pkg.all;

entity tabla_tangente_20k is
    generic 
	     (
         ADDR_WIDTH: integer:=11;
			DATA_WIDTH:    integer:=10);
		  port (clk:          in std_logic;
          dataa:        in  std_logic_vector (ADDR_WIDTH-1 downto 0); 
          result:       out std_logic_vector (DATA_WIDTH-1 downto 0)
          );
end tabla_tangente_20k;
ARCHITECTURE inferencia OF tabla_tangente_20k IS
CONSTANT N_WORDS: integer:=2**ADDR_WIDTH-1;
TYPE ROM IS ARRAY(0 TO N_WORDS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
FUNCTION INIT_ROM RETURN ROM IS
VARIABLE romvar: ROM;
VARIABLE x: real;
begin
 for I in 0 TO N_WORDS loop
         x:= TANH(to_real(to_ufixed(CONV_STD_LOGIC_VECTOR(i,ADDR_WIDTH),1,-(ADDR_WIDTH-2))));
         romvar(i):=to_slv(to_ufixed(x,-1,-DATA_WIDTH));	 	 
  end loop;
  return romvar;
end;CONSTANT memoria: ROM := INIT_ROM;
BEGIN
memory:process(clk)
begin
    if clk'event and clk='1' then
        result<=memoria(conv_integer(dataa));
    end if;
end process;
END inferencia;