Entity ExecUnit is
  Generic ( N : natural := 64 );
  Port (
    A, B              : in std_logic_vector( N-1 downto 0 );
    NotA              : in std_logic := '0';
    FuncClass         : in std_logic_vector( 1 downto 0 );
    LogicFN           : in std_logic_vector( 1 downto 0 );
    ShiftFN           : in std_logic_vector( 1 downto 0 );
    AddnSub, ExtWord  : in std_logic := '0';
    
    Y                 : out std_logic_vector( N-1 downto 0 );
    Zero, AltB, AltBu : out std_logic);
End Entity ExecUnit;