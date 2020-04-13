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

  signal a  : std_logic_vector(N-1 downto 0);
  signal b  : std_logic_vector(N-1 downto 0);
  signal c  : std_logic_vector(N-1 downto 0);

  signal d  : std_logic_vector(N-1 downto 0);
  signal e  : std_logic_vector(N-1 downto 0);
  signal f  : std_logic_vector(N-1 downto 0);

  signal g  : std_logic_vector(N-1 downto 0);
  signal h  : std_logic_vector(N-1 downto 0);
  signal i  : std_logic_vector(N-1 downto 0);

  signal j  : std_logic_vector(N-1 downto 0);
  signal k  : std_logic_vector(N-1 downto 0);

  signal l  : std_logic_vector(1 downto 0);
  signal m  : std_logic_vector(1 downto 0);
  signal o  : std_logic_vector(1 downto 0);
begin
  tempX <= X;
  a <= (63 downto 48 => X(63))&X(63 downto 16);
  b <= (63 downto 32 => X(63))&X(63 downto 32);
  c <= (63 downto 16 => X(63))&X(63 downto 48);

  d <= (63 downto 60 => X(63))&X(63 downto 4);
  e <= (63 downto 56 => X(63))&X(63 downto 8);
  f <= (63 downto 52 => X(63))&X(63 downto 12);

  g <= (63 => X(63))&X(63 downto 1);
  h <= (63 downto 62 => X(63))&X(63 downto 2);
  i <= (63 downto 61 => X(63))&X(63 downto 3);

  l(1) <= ShiftCount(5);
  l(0) <= ShiftCount(4);

  m(1) <= ShiftCount(3);
  m(0) <= ShiftCount(2);

  o(1) <= ShiftCount(1);
  o(0) <= ShiftCount(0);

  Mux32: entity work.MUX4bit generic map(N) port map(
    tempX, a, b, c, l, j);
  
  Mux8: entity work.MUX4bit generic map(N) port map(
    j, d, e, f, m, k);
  
  Mux4: entity work.MUX4bit generic map(N) port map(
    k, g, h, i, o, tempY);
  Y <= tempY;
End Architecture rtl;

