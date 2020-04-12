-----------------------------------------------------------------------------
-- 4-bit channel Multiplexer
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 

Entity MUX4bit32 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity MUX4bit32;

Architecture rtl of MUX4bit32 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      X(47 downto 0)&(15 downto 0 => '0') when "01",
      X(31 downto 0)&(31 downto 0 => '0') when "10",
      X(15 downto 0)&(47 downto 0 => '0') when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;

Entity MUX4bit8 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity MUX4bit8;

Architecture rtl of MUX4bit8 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      X(59 downto 0)&(3 downto 0 => '0') when "01",
      X(55 downto 0)&(7 downto 0 => '0') when "10",
      X(51 downto 0)&(11 downto 0 => '0') when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;

Entity MUX4bit2 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity MUX4bit2;

Architecture rtl of MUX4bit2 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      X(62 downto 0)&(0 => '0') when "01",
      X(61  downto 0)&(1 downto 0 => '0') when "10",
      X(60 downto 0)&(2 downto 0 => '0') when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;

-----------------------------------------------------------------------------
-- SLL64
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

Entity SLL64 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SLL64;

Architecture rtl of SLL64 is
  signal tempX : std_logic_vector(N-1 downto 0);
  signal tempY : std_logic_vector(N-1 downto 0);
begin
    Mux1 : entity Work.MUX4bit32 generic map(64) port map(tempX, std_logic_vector(ShiftCount(5 downto 4)), tempY);
    Mux2 : entity Work.MUX4bit8 generic map(64) port map(tempX, std_logic_vector(ShiftCount(3 downto 2)), tempY);
    Mux3 : entity Work.MUX4bit2 generic map(64) port map(tempX, std_logic_vector(ShiftCount(1 downto 0)), tempY);
    tempX <= tempY;
  Y <= tempY;
End Architecture rtl;
