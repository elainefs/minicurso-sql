-- Exercício 5:
-- a) Faça um agrupamento para descobrir o total de clientes por Sexo.
SELECT Sexo, COUNT(ID_Cliente) AS 'Qtd. Clientes'
FROM clientes
GROUP BY sexo;

-- b) Faça um agrupamento para descobrir quantos produtos existem por categoria.
SELECT Categoria, COUNT(*) AS 'Qtd. Produtos'
FROM produtos
INNER JOIN categorias ON produtos.ID_Categoria = categorias.ID_Categoria
GROUP BY Categoria;

-- c) Faça um agrupamento para descobrir a soma total de receita por Loja.
SELECT Loja, SUM(Receita_Venda) AS 'Receita Total', SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos
INNER JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY Loja;