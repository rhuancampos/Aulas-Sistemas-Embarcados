-- Declaração de bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade
entity FlipFlop_D is
  Port (
    CLK : in  STD_LOGIC;   -- Sinal de Clock
    D   : in  STD_LOGIC;   -- Dado de entrada
    Q   : out STD_LOGIC);  -- Dado guardado na saída
end FlipFlop_D;

-- Arquitetura (O coportamento)
architecture Memoria of FlipFlop_D is
  begin
    process(CLK)
    begin
      if rising_edge(CLK) then
        Q <= D;
      end if;
    end process;
  end Memoria;