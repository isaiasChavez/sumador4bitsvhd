-------------------------------------------------------------------------------
--
-- Title       : producto8bits
-- Design      : multiplicador
-- Author      : isaias.ch4vez@gmail.com
-- Company     : utm
--
-------------------------------------------------------------------------------
--
-- File        : producto8bits.vhd
-- Generated   : Sat May 30 12:54:13 2020
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {producto8bits} architecture {producto8bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_unsigned.all;

entity producto8bits is
	 port(
	 	suma : in STD_LOGIC_VECTOR(4 downto 0);
	 	control : out STD_LOGIC;
		 reset : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 parteAlta: out STD_LOGIC_VECTOR(3 downto 0)
	     );
end producto8bits;
--}} End of automatically maintained section


architecture producto8bits of producto8bits is
	signal respuesta : STD_LOGIC_VECTOR(8 downto 0);
begin  	 			  
	process(clk,reset,suma)  
	
	begin
	--logica del multiplicador		
	if reset = '1' then
		--valores iniciales por reset
		respuesta <= "000000101";
		parteAlta(3 downto 0) <= "0000";
		control <=  respuesta(0);
	end if;	 
	
	if clk'event and clk = '1' then
		respuesta(8 downto 4) <=suma;
	elsif clk'event and clk = '0' then
		parteAlta(3 downto 0)<= respuesta(8 downto 5);
		
		respuesta(7 downto 0) <= respuesta(8 downto 1);
	end if;
	--control <= respuesta(0);
		
		
	end process;

end producto8bits;
