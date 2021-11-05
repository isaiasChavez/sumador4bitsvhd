---------------------------------------------------------------------------------------------------
--
-- Title       : FullAdder1BitFub
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\FullAdder1BitFub.vhd
-- Generated   : Thu Nov  4 23:12:16 2021
-- From        : c:\My_Designs\sumador\sumador\src\FullAdder1BitFub.bde
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


entity FullAdder1BitFub is
  port(
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       Cout : out STD_LOGIC;
       suma : out STD_LOGIC
  );
end FullAdder1BitFub;

architecture FullAdder1BitFub of FullAdder1BitFub is

---- Component declarations -----

component FullAdder1BitCode
  port (
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       Cout : out STD_LOGIC;
       suma : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : FullAdder1BitCode
  port map(
       Cin => Cin,
       Cout => Cout,
       a => a,
       b => b,
       suma => suma
  );


end FullAdder1BitFub;
