---------------------------------------------------------------------------------------------------
--
-- Title       : Unir32Bits
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : Unir32Bits.vhd
-- Generated   : Tue Nov  9 00:12:50 2021
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
--{entity {Unir32Bits} architecture {Unir32Bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity Unir32Bits is
	 port(
		 signo : in STD_LOGIC;
		 exponente : in STD_LOGIC_VECTOR(7 downto 0);
		 mantiza : in STD_LOGIC_VECTOR(22 downto 0);
		 Z : out STD_LOGIC_VECTOR(31 downto 0)
	     );
end Unir32Bits;

--}} End of automatically maintained section

architecture Unir32Bits of Unir32Bits is
begin	
	process (signo,exponente,mantiza) 							   
	begin	 
		
		Z (31)<= signo;
		Z (30 downto 23) <= exponente;
		Z (22 downto 0) <= mantiza;

	end process;
end Unir32Bits;
