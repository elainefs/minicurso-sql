-- SUM
SELECT SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos;

-- COUNT
SELECT COUNT(Nome) AS 'Qtd Clientes'
FROM clientes
WHERE Sexo = 'M';

-- COUNT(*)
SELECT COUNT(*)
FROM clientes;

-- COUNT(DISTINCT)
SELECT COUNT(DISTINCT Escolaridade)
FROM clientes;

-- AVG
SELECT AVG(Renda_Anual) AS 'Média salarial'
FROM clientes; 

-- MIN
SELECT MIN(Preco_Unit) AS 'Preço Unit. Mínimo'
FROM produtos;

-- MAX
SELECT MAX(Preco_Unit) AS 'Preço Unit. Máximo'
FROM produtos;