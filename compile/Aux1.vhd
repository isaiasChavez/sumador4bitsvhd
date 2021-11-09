---------------------------------------------------------------------------------------------------
--
-- Title       : Aux1
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Aux1.vhd
-- Generated   : Tue Nov  9 01:17:13 2021
-- From        : c:\My_Designs\sumador\sumador\src\Aux1.bde
-- By          : Bde2Vhdl ver. 2.6
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


entity Aux1 is
  port(
       z : in STD_LOGIC;
       z1 : out STD_LOGIC;
       z2 : out STD_LOGIC
  );
end Aux1;

architecture Aux1 of Aux1 is

---- Signal declarations used on the diagram ----

signal NET25 : STD_LOGIC;

begin

---- Terminal assignment ----

    -- Inputs terminals
	NET25 <= z;

    -- Output\buffer terminals
	z1 <= NET25;
	z2 <= NET25;


end Aux1;
