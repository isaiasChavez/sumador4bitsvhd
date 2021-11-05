---------------------------------------------------------------------------------------------------
--
-- Title       : mul2a1de1bit
-- Design      : sumador
-- Author      : Unknown
-- Company     : Unknown
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\mul2a1de1bit.vhd
-- Generated   : Thu Nov  4 22:38:34 2021
-- From        : c:\My_Designs\sumador\sumador\src\mul2a1de1bit.bde
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


entity mul2a1de1bit is
  port(
       a0 : in STD_LOGIC;
       a1 : in STD_LOGIC;
       control : in STD_LOGIC;
       Z : out STD_LOGIC
  );
end mul2a1de1bit;

architecture mul2a1de1bit of mul2a1de1bit is

---- Component declarations -----

component mux2a1de1bit
  port (
       a0 : in STD_LOGIC;
       a1 : in STD_LOGIC;
       control : in STD_LOGIC;
       Z : out STD_LOGIC
  );
end component;

begin

----  Component instantiations  ----

U1 : mux2a1de1bit
  port map(
       Z => Z,
       a0 => a0,
       a1 => a1,
       control => control
  );


end mul2a1de1bit;
