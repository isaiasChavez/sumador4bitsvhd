---------------------------------------------------------------------------------------------------
--
-- Title       : MultiplicadorDePuntoFlotante
-- Design      : sumador
-- Author      : isaiaschavez.co@gmail.com
-- Company     : utm
--
---------------------------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\sumador\sumador\compile\MultiplicadorDePuntoFlotante.vhd
-- Generated   : Tue Nov  9 01:37:09 2021
-- From        : c:\My_Designs\sumador\sumador\src\MultiplicadorDePuntoFlotante.bde
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


entity MultiplicadorDePuntoFlotante is
  port(
       A : in STD_LOGIC_VECTOR(31 downto 0);
       B : in STD_LOGIC_VECTOR(31 downto 0);
       R : out STD_LOGIC_VECTOR(31 downto 0)
  );
end MultiplicadorDePuntoFlotante;

architecture MultiplicadorDePuntoFlotante of MultiplicadorDePuntoFlotante is

---- Component declarations -----

component divide32bits
  port (
       entrada : in STD_LOGIC_VECTOR(31 downto 0);
       exponente : out STD_LOGIC_VECTOR(7 downto 0);
       mantiza : out STD_LOGIC_VECTOR(22 downto 0);
       signo : out STD_LOGIC
  );
end component;
component multiplicadormatizadividido
  port (
       A : in STD_LOGIC_VECTOR(22 downto 0);
       B : in STD_LOGIC_VECTOR(22 downto 0);
       ZA : out STD_LOGIC_VECTOR(22 downto 0);
       ZB : out STD_LOGIC_VECTOR(22 downto 0);
       msb : out STD_LOGIC
  );
end component;
component sumadorexponentes
  port (
       A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR(7 downto 0);
       carry : in STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component Unir32Bits
  port (
       exponente : in STD_LOGIC_VECTOR(7 downto 0);
       mantiza : in STD_LOGIC_VECTOR(22 downto 0);
       signo : in STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component \Mux2A1-Multiplicador\
  port (
       A : in STD_LOGIC_VECTOR(22 downto 0);
       B : in STD_LOGIC_VECTOR(22 downto 0);
       control : in STD_LOGIC;
       Z : out STD_LOGIC_VECTOR(22 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET235 : STD_LOGIC;
signal NET257 : STD_LOGIC;
signal NET373 : STD_LOGIC;
signal NET414 : STD_LOGIC;
signal BUS202 : STD_LOGIC_VECTOR (22 downto 0);
signal BUS220 : STD_LOGIC_VECTOR (22 downto 0);
signal BUS333 : STD_LOGIC_VECTOR (22 downto 0);
signal BUS352 : STD_LOGIC_VECTOR (22 downto 0);
signal BUS388 : STD_LOGIC_VECTOR (22 downto 0);
signal BUS829 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS835 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS841 : STD_LOGIC_VECTOR (7 downto 0);

begin

----  Component instantiations  ----

U1 : multiplicadormatizadividido
  port map(
       A => BUS202,
       B => BUS220,
       ZA => BUS333,
       ZB => BUS352,
       msb => NET373
  );

U2 : \Mux2A1-Multiplicador\
  port map(
       A => BUS333,
       B => BUS352,
       Z => BUS388,
       control => NET373
  );

U3 : sumadorexponentes
  port map(
       A => BUS829,
       B => BUS835,
       Z => BUS841,
       carry => NET373
  );

U4 : Unir32Bits
  port map(
       Z => R,
       exponente => BUS841,
       mantiza => BUS388,
       signo => NET414
  );

U5 : divide32bits
  port map(
       entrada => A,
       exponente => BUS829,
       mantiza => BUS220,
       signo => NET235
  );

U6 : divide32bits
  port map(
       entrada => B,
       exponente => BUS835,
       mantiza => BUS202,
       signo => NET257
  );

NET414 <= NET235 xor NET257;


end MultiplicadorDePuntoFlotante;
