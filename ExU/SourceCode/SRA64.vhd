-----------------------------------------------------------------------------
-- 4-bit channel Multiplexer
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 

Entity SRA_MUX4bit32 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SRA_MUX4bit32;

Architecture rtl of SRA_MUX4bit32 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      (63 downto 48 => X(63))&X(63 downto 16) when "01",
      (63 downto 32 => X(63))&X(63 downto 32) when "10",
      (63 downto 16 => X(63))&X(63 downto 48) when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;

Entity SRA_MUX4bit8 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SRA_MUX4bit8;

Architecture rtl of SRA_MUX4bit8 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      (63 downto 60 => X(63))&X(63 downto 4) when "01",
      (63 downto 56 => X(63))&X(63 downto 8) when "10",
      (63 downto 52 => X(63))&X(63 downto 12) when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;

Entity SRA_MUX4bit2 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    selectBit   : in std_logic_vector(1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SRA_MUX4bit2;

Architecture rtl of SRA_MUX4bit2 is
begin
  with selectBit select
    Y <=
      X(N-1 downto 0) when "00",
      (63 => X(63))&X(63 downto 1) when "01",
      (63 downto 62 => X(63))&X(63 downto 2) when "10",
      (63 downto 61 => X(63))&X(63 downto 3) when "11",
      (63 downto 0 => 'X') when others;
End Architecture rtl;

-----------------------------------------------------------------------------
-- SRA64
-----------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

Entity SRA64 is
  Generic ( N : natural := 64 );
  Port(
    X           : in std_logic_vector( N-1 downto 0 );
    ShiftCount  : in unsigned(integer(ceil(log2(real(N))))-1 downto 0);

    Y           : out std_logic_vector( N-1 downto 0 ));
End Entity SRA64;

Architecture rtl of SRA64 is
  signal tempX : std_logic_vector(N-1 downto 0);
  signal tempY : std_logic_vector(N-1 downto 0);
begin
    Mux1 : entity Work.SRA_MUX4bit32 generic map(64) port map(tempX, std_logic_vector(ShiftCount(5 downto 4)), tempY);
    Mux2 : entity Work.SRA_MUX4bit8 generic map(64) port map(tempX, std_logic_vector(ShiftCount(3 downto 2)), tempY);
    Mux3 : entity Work.SRA_MUX4bit2 generic map(64) port map(tempX, std_logic_vector(ShiftCount(1 downto 0)), tempY);
    tempX <= tempY;
  Y <= tempY;
End Architecture rtl;

