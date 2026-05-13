-- Declaração de bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_Mux_2x1 is
  end tb_Mux_2x1;

architecture Simulacao of tb_Mux_2x1 is
  component Mux_2x1
   Port (
    A : in  STD_LOGIC;   -- Entrada A
    B : in  STD_LOGIC;   -- Entrada B
    S : in  STD_LOGIC;   -- Pino de seleção 
    X : out STD_LOGIC);  -- Saida X
  end component;

  signal fio_A : STD_LOGIC := '0';
  signal fio_B : STD_LOGIC := '0';
  signal fio_S : STD_LOGIC := '0';
  signal fio_X : STD_LOGIC;

  begin
    UUT: Mux_2x1 port map (
      A => fio_A,
      B => fio_B,
      S => fio_S,
      X => fio_X
    );

    estimulos: process
    begin
      fio_S <= '0';

      fio_A <= '0'; fio_B <= '1';
      wait for 10 ns;
      assert (fio_X = '0') report "Fail 0/0/1" severity error;

      fio_A <= '1'; fio_B <= '0';
      wait for 10 ns;
      assert (fio_X = '1') report "Fail 0/1/0" severity error;

      fio_S <= '1';

      fio_A <= '1'; fio_B <= '0';
      wait for 10 ns;
      assert (fio_X = '0') report "Fail 1/1/0" severity error;

      fio_A <= '0'; fio_B <= '1';
      wait for 10 ns;
      assert (fio_X = '1') report "Fail 1/0/1" severity error;
    
      wait;
  end process;
end Simulacao;