---------------------------------------------------------------------------------------------------
--
-- Title       : \Mux2A1-Multiplicador\
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : Mux2A1-Multiplicador.vhd
-- Generated   : Mon Nov  8 23:39:21 2021
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
--{entity {\Mux2A1-Multiplicador\} architecture {\Mux2A1-Multiplicador\}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity \Mux2A1-Multiplicador\ is
	 port(
		 control : in STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(22 downto 0);
		 B : in STD_LOGIC_VECTOR(22 downto 0);
		 Z : out STD_LOGIC_VECTOR(22 downto 0)
	     );
end \Mux2A1-Multiplicador\;

--}} End of automatically maintained section

architecture \Mux2A1-Multiplicador\ of \Mux2A1-Multiplicador\ is
begin

	process(control,A,B)
	begin 
		if control = '0' then
			Z <= A;
		else
			Z <= B;
		end if;
	end process;

end \Mux2A1-Multiplicador\;
