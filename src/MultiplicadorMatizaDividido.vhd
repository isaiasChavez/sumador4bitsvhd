---------------------------------------------------------------------------------------------------
--
-- Title       : MultiplicadorMatizaDividido
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : MultiplicadorMatizaDividido.vhd
-- Generated   : Mon Nov  8 23:30:03 2021
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
--{entity {MultiplicadorMatizaDividido} architecture {MultiplicadorMatizaDividido}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.all;


entity MultiplicadorMatizaDividido is
	 port(
		 A : in STD_LOGIC_VECTOR(22 downto 0);
		 B : in STD_LOGIC_VECTOR(22 downto 0);
		 msb : out STD_LOGIC;
		 ZA : out STD_LOGIC_VECTOR(22 downto 0);
		 ZB : out STD_LOGIC_VECTOR(22 downto 0)
	     );
end MultiplicadorMatizaDividido;

--}} End of automatically maintained section

architecture MultiplicadorMatizaDividido of MultiplicadorMatizaDividido is
begin
		process (A,B) 							   
		variable A_xtend : STD_LOGIC_VECTOR(23 downto 0);
		variable B_xtend : STD_LOGIC_VECTOR(23 downto 0);
		variable Z: STD_LOGIC_VECTOR(47 downto 0);
	begin	 
		
		A_xtend := "100000000000000000000000";
		B_xtend := "100000000000000000000000";
		
		A_xtend (22 downto 0) := A;	
		B_xtend (22 downto 0) := B;
										 
		Z := A_xtend * B_xtend;
		ZA <= Z(45 downto 23);
		ZB <= Z(46 downto 24);
		msb <= Z(47); 

	end process;
	 -- enter your statements here --
  
end MultiplicadorMatizaDividido;
