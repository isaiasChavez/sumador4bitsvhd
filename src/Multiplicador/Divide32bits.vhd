---------------------------------------------------------------------------------------------------
--
-- Title       : Divide32bits
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : Divide32bits.vhd
-- Generated   : Sun Nov  7 18:41:46 2021
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
--{entity {Divide32bits} architecture {Divide32bits}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity Divide32bits is
	 port(
		 entrada : in STD_LOGIC_VECTOR(31 downto 0);
		 signo : out STD_LOGIC;
		 exponente : out STD_LOGIC_VECTOR(7 downto 0);
		 mantiza : out STD_LOGIC_VECTOR(22 downto 0)
	     );
end Divide32bits;

--}} End of automatically maintained section

architecture Divide32bits of Divide32bits is
begin
	
	process (entrada)
	begin	 
		signo <= entrada(31);	
		exponente <= entrada(30 downto 23);
		mantiza <= entrada(22 downto 0);
			

		
	end process;
	 -- enter your statements here --

end Divide32bits;
