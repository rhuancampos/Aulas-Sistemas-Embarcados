
-- Declaração de bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade do teste (sempre vazia)
entity Porta_AND_td is
end Porta_AND_td;

-- Arquitetura (O coportamento)
architecture Comportamento of Porta_AND_td is
  -- Declaração do componentes que será testado
  component Porta_AND
    Port (
      A : in STD_LOGIC;
      B : in STD_LOGIC;
      S : out STD_LOGIC;
    );
  end component;
  
  --Sinais internos para injetar e monitorar os valores
  signal A_teste : STD_LOGIC := '0';
  signal B_teste : STD_LOGIC := '0';
  signal S_teste : STD_LOGIC;
  
  begin
    --Instaciação (Mapeamento das portas)
    UUI: Porta_AND
    Port Map (
      A => A_teste,
      B => B_teste,
      S => S_teste
    );

    -- Processo que gera os estimulos (a tabela verdade)
    stimulus_process: process
    begin
      A_teste <= '0';
      B_teste <= '0';
      wait for 10 ns;
      assert (S_teste = '0') report "Fail 0/0" severity error;

      A_teste <= '0';
      B_teste <= '1';
      wait for 10 ns;
      assert (S_teste = '0') report "Fail 0/1" severity error;

      A_teste <= '1';
      B_teste <= '0';
      wait for 10 ns;
      assert (S_teste = '0') report "Fail 1/0" severity error;

      A_teste <= '1';
      B_teste <= '1';
      wait for 10 ns;
      assert (S_teste = '1') report "Fail 1/1" severity error;

      wait; -- Finaliza a simulação
    end process stimulus_process;
  end Comportamento;