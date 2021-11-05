---------------------------------------------------------------------------------------------------
--
-- Title       : fulladder1Bit
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\fulladder1Bit.vhd
-- Generated   : Thu Nov  4 22:58:32 2021
-- From        : c:\My_Designs\sumador\sumador\src\fulladder1Bit.bde
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


entity fulladder1Bit is
  port(
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       Cout : out STD_LOGIC;
       suma : out STD_LOGIC
  );
end fulladder1Bit;

architecture fulladder1Bit of fulladder1Bit is

---- Component declarations -----

component fulladder1bit
  port (
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       Cout : out STD_LOGIC;
       salida : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : fulladder1bit
  port map(
       Cin => Dangling_Input_Signal,
       a => Dangling_Input_Signal,
       b => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end fulladder1Bit;
