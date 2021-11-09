---------------------------------------------------------------------------------------------------
--
-- Title       : Sumador4Bits
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Sumador4Bits.vhd
-- Generated   : Tue Nov  9 01:17:12 2021
-- From        : c:\My_Designs\sumador\sumador\src\Sumador4Bits.bde
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


entity Sumador4Bits is
  port(
       control : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR(3 downto 0);
       B : in STD_LOGIC_VECTOR(3 downto 0);
       Cout : out STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(3 downto 0)
  );
end Sumador4Bits;

architecture Sumador4Bits of Sumador4Bits is

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

---- Signal declarations used on the diagram ----

signal NET36 : STD_LOGIC;
signal NET42 : STD_LOGIC;
signal NET48 : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : Alu1bit
  port map(
       Cin => control,
       Cout => NET48,
       Z => Z(0),
       a => A(0),
       b => B(0),
       control => control
  );

U2 : Alu1bit
  port map(
       Cin => NET48,
       Cout => NET42,
       Z => Z(1),
       a => A(1),
       b => B(1),
       control => control
  );

U3 : Alu1bit
  port map(
       Cin => NET42,
       Cout => NET36,
       Z => Z(2),
       a => A(2),
       b => B(2),
       control => control
  );

U4 : Alu1bit
  port map(
       Cin => NET36,
       Cout => Cout,
       Z => Z(3),
       a => A(3),
       b => B(3),
       control => control
  );


end Sumador4Bits;
