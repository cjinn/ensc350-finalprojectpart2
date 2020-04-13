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
  signal tempX  : std_logic_vector(N-1 downto 0);
  signal tempY  : std_logic_vector(N-1 downto 0);

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
  l(1) <= ShiftCount(5);
  l(0) <= ShiftCount(4);

  m(1) <= ShiftCount(3);
  m(0) <= ShiftCount(2);

  o(1) <= ShiftCount(1);
  o(0) <= ShiftCount(0);

  tempX <= X;
  a <= tempX(47 downto 0)&(15 downto 0 => '0');
  b <= tempX(31 downto 0)&(31 downto 0 => '0');
  c <= tempX(15 downto 0)&(47 downto 0 => '0');

  Mux32: entity work.MUX4bit generic map(N) port map(tempX, a, b, c, l, j);
  
  d <= j(59 downto 0)&(3 downto 0 => '0');
  e <= j(55 downto 0)&(7 downto 0 => '0');
  f <= j(51 downto 0)&(11 downto 0 => '0');
  
  Mux8: entity work.MUX4bit generic map(N) port map(j, d, e, f, m, k);
  
  g <= k(62 downto 0)&(0 => '0');
  h <= k(61 downto 0)&(1 downto 0 => '0');
  i <= k(60 downto 0)&(2 downto 0 => '0');

  
  Mux4: entity work.MUX4bit generic map(N) port map(k, g, h, i, o, tempY);

  Y <= tempY;
End Architecture rtl;
