-- WHERE

-- Exemplo 1: Selecionar na tabela de clientes apenas os clientes do sexo feminino
SELECT *
FROM clientes
WHERE Sexo = 'F';

-- Exemplo 2: Selecionar na tabela de produtos apenas os produtos com preço acima de R$2.000
SELECT *
FROM produtos
WHERE Preco_Unit > 2000;

-- Exemplo 3: Selecionar os pedidos realizados no dia 10/03/2019 (aaaa-mm-dd)
SELECT *
FROM pedidos
WHERE Data_Venda = '2019-03-10';
