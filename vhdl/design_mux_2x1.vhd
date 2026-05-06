-- Declaração de bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade
entity Mux_2x1 is
  Port (
    A : in  STD_LOGIC;   -- Entrada A
    B : in  STD_LOGIC;   -- Entrada B
    S : in  STD_LOGIC;   -- Pino de seleção 
    X : out STD_LOGIC);  -- Saida X
end Mux_2x1;

-- Arquitetura (O coportamento)
architecture main of Mux_2x1 is
  begin
    -- Usando a estrutura "when else" para lógica condicional
    X <= A when (S = '0') else B;
  end main;