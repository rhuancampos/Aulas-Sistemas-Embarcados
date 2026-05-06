-- Declaração de bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entidade
entity Porta_AND is
  Port (
    A : in  STD_LOGIC;   -- Entrada A
    B : in  STD_LOGIC;   -- Entrada B
    S : out STD_LOGIC);  -- Saida S
end Porta_AND;

-- Arquitetura (O coportamento)
architecture Comportamento of Porta_AND is
  begin
    -- A saida S recebe (<=) a operação lógica (A and B)
    S <= A and B;
  end Comportamento;