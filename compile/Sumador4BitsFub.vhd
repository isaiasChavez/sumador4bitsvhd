---------------------------------------------------------------------------------------------------
--
-- Title       : Sumador4BitsFub
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Sumador4BitsFub.vhd
-- Generated   : Thu Nov  4 22:50:36 2021
-- From        : c:\My_Designs\sumador\sumador\src\Sumador4BitsFub.bde
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


entity Sumador4BitsFub is
  port(
       A : in STD_LOGIC_VECTOR(3 downto 0);
       B : in STD_LOGIC_VECTOR(3 downto 0);
       Cout : out STD_LOGIC;
       control : out STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(3 downto 0)
  );
end Sumador4BitsFub;

architecture Sumador4BitsFub of Sumador4BitsFub is

begin

end Sumador4BitsFub;
