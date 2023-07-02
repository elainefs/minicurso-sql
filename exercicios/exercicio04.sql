-- Exercício 4:
-- a) Descubra o total de custo da tabela de pedidos.
SELECT SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos;

-- b) Descubra a quantidade total de lojas.
SELECT COUNT(ID_Loja) AS 'Qtd. Total de Lojas'
FROM lojas;

-- c) Descubra o custo médio dos produtos (de acordo com a tabela de produtos).
SELECT AVG(Custo_Unit) AS 'Custo médio'
FROM produtos;

-- d) Descubra a quantidade mínima e máxima de funcionários das lojas (faça isso em um único SELECT).
SELECT MIN(Num_Funcionarios) AS 'Número Min. de Funcionários', MAX(Num_Funcionarios) AS 'Número Max. de Funcionários'
FROM lojas;
