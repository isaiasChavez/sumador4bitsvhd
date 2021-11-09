---------------------------------------------------------------------------------------------------
--
-- Title       : MultiplicadorMantiza
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : MultiplicadorMantiza.vhd
-- Generated   : Sun Nov  7 21:49:25 2021
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
--{entity {MultiplicadorMantiza} architecture {MultiplicadorMantiza}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.all;




entity MultiplicadorMantiza is
	 port(
		 A : in STD_LOGIC_VECTOR(22 downto 0);
		 B : in STD_LOGIC_VECTOR(22 downto 0);
		 Z : out STD_LOGIC_VECTOR(47 downto 0)
	     );
end MultiplicadorMantiza;

--}} End of automatically maintained section

architecture MultiplicadorMantiza of MultiplicadorMantiza is
begin	   
	process (A,B) 							   
		variable A_xtend : STD_LOGIC_VECTOR(23 downto 0);
		variable B_xtend : STD_LOGIC_VECTOR(23 downto 0);
	begin	 
		
		A_xtend := "100000000000000000000000";
		B_xtend := "100000000000000000000000";
		
		A_xtend (22 downto 0) := A;	
		B_xtend (22 downto 0) := B;
		
															 
		Z <= A_xtend * A_xtend;
		

	end process;

end MultiplicadorMantiza;
