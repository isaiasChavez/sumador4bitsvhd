---------------------------------------------------------------------------------------------------
--
-- Title       : FullAdder1BitCode
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : FullAdder1BitCode.vhd
-- Generated   : Thu Nov  4 23:03:34 2021
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
--{entity {FullAdder1BitCode} architecture {FullAdder1BitCode}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity FullAdder1BitCode is
	 port(
		 a : in STD_LOGIC;
		 b : in STD_LOGIC;
		 Cin : in STD_LOGIC;
		 suma : out STD_LOGIC;
		 Cout : out STD_LOGIC
	     );
end FullAdder1BitCode;

--}} End of automatically maintained section

architecture FullAdder1BitCode of FullAdder1BitCode is
begin
	suma <= a xor b xor Cin;
	Cout <= (a and b )or (a and Cin) or (b and Cin);
	 -- enter your statements here --

end FullAdder1BitCode;
