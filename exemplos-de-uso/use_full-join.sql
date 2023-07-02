-- FULL JOIN

SELECT Loja, Receita_Venda AS 'Receita Total'
FROM pedidos
FULL JOIN lojas
ON pedidos.ID_Loja = lojas.ID_Loja; 