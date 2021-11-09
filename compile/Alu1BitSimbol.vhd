---------------------------------------------------------------------------------------------------
--
-- Title       : Alu1BitSimbol
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Alu1BitSimbol.vhd
-- Generated   : Tue Nov  9 01:17:12 2021
-- From        : c:\My_Designs\sumador\sumador\src\Alu1BitSimbol.bde
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


entity Alu1BitSimbol is
  port(
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       Cin : in STD_LOGIC;
       control : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Z : out STD_LOGIC
  );
end Alu1BitSimbol;

architecture Alu1BitSimbol of Alu1BitSimbol is

---- Component declarations -----

component Alu1bit
  port (
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       control : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Z : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : Alu1bit
  port map(
       Cin => Cin,
       Cout => Cout,
       Z => Z,
       a => A,
       b => B,
       control => control
  );


end Alu1BitSimbol;
