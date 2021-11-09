---------------------------------------------------------------------------------------------------
--
-- Title       : SumadorExponentes
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : SumadorExponentes.vhd
-- Generated   : Mon Nov  8 23:48:42 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {SumadorExponentes} architecture {SumadorExponentes}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.all;


entity SumadorExponentes is
	 port(
		 carry : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(7 downto 0);
		 B : in STD_LOGIC_VECTOR(7 downto 0);
		 Z : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end SumadorExponentes;

--}} End of automatically maintained section

architecture SumadorExponentes of SumadorExponentes is
begin
	process (A,B) 							   
		variable Suma : STD_LOGIC_VECTOR(7 downto 0);
		variable resta : STD_LOGIC_VECTOR(7 downto 0);
	
	begin	 
		Suma := A + B + carry;
		Z <= Suma - "1111111";
	 

	end process;
	 -- enter your statements here --

end SumadorExponentes;
