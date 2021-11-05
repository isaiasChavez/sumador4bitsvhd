---------------------------------------------------------------------------------------------------
--
-- Title       : Alu1bit
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Alu1bit.vhd
-- Generated   : Thu Nov  4 23:11:08 2021
-- From        : c:\My_Designs\sumador\sumador\src\Alu1bit.bde
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


entity Alu1bit is
  port(
       Cin : in STD_LOGIC;
       a : in STD_LOGIC;
       b : in STD_LOGIC;
       control : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Z : out STD_LOGIC
  );
end Alu1bit;

architecture Alu1bit of Alu1bit is

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
component mux2a1de1bit
  port (
       a0 : in STD_LOGIC;
       a1 : in STD_LOGIC;
       control : in STD_LOGIC;
       Z : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET209 : STD_LOGIC;
signal NET73 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : mux2a1de1bit
  port map(
       Z => NET209,
       a0 => b,
       a1 => NET73,
       control => control
  );

U2 : FullAdder1BitCode
  port map(
       Cin => Cin,
       Cout => Cout,
       a => a,
       b => NET209,
       suma => Z
  );

NET73 <= not(b);


end Alu1bit;
