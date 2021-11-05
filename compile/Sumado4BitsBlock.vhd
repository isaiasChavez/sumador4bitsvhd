---------------------------------------------------------------------------------------------------
--
-- Title       : Sumado4BitsBlock
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\Sumado4BitsBlock.vhd
-- Generated   : Thu Nov  4 22:38:39 2021
-- From        : c:\My_Designs\sumador\sumador\src\Sumado4BitsBlock.bde
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


entity Sumado4BitsBlock is
  port(
       control : in STD_LOGIC;
       A : in STD_LOGIC_VECTOR(3 downto 0);
       B : in STD_LOGIC_VECTOR(3 downto 0);
       Cout : out STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(3 downto 0)
  );
end Sumado4BitsBlock;

architecture Sumado4BitsBlock of Sumado4BitsBlock is

---- Component declarations -----

component Sumador4BitsCode
	--- component Sumador4BitsCode has no ports
end component;

begin

----  Component instantiations  ----

U1 : Sumador4BitsCode;


end Sumado4BitsBlock;
