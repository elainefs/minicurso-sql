-- GROUP BY
-- Exemplo: Crie um agrupamento que mostre a quantidade de produtos por marca
SELECT *
FROM produtos;

SELECT Marca_Produto, COUNT(Marca_Produto) AS 'Qtd. Produtos'
FROM produtos
GROUP BY Marca_Produto;

-- Exemplo 2: Crie um agrupamento que mostre a quantidade de clientes por escolaridade
SELECT *
FROM clientes;

SELECT Escolaridade, COUNT(Escolaridade) AS 'Qts. Clientes'
FROM clientes
GROUP BY Escolaridade;

-- Exemplo 3: Crie um agrupamento que mostre o total de receitas (tabela pedidos) por id da loja
SELECT *
FROM pedidos;

SELECT ID_Loja, SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos
GROUP BY ID_Loja;