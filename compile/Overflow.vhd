---------------------------------------------------------------------------------------------------
--
-- Title       : Overflow
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Overflow.vhd
-- Generated   : Tue Nov  9 01:17:13 2021
-- From        : c:\My_Designs\sumador\sumador\src\Overflow.bde
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


entity Overflow is
  port(
       a3 : in STD_LOGIC;
       b3 : in STD_LOGIC;
       control : in STD_LOGIC;
       z : in STD_LOGIC;
       over : out STD_LOGIC
  );
end Overflow;

architecture Overflow of Overflow is

---- Component declarations -----

component OverFlow
  port (
       a3 : in STD_LOGIC;
       b3 : in STD_LOGIC;
       control : in STD_LOGIC;
       z : in STD_LOGIC;
       over : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : OverFlow
  port map(
       a3 => Dangling_Input_Signal,
       b3 => Dangling_Input_Signal,
       control => Dangling_Input_Signal,
       z => Dangling_Input_Signal
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end Overflow;
