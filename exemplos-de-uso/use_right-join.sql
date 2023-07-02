-- RIGHT JOIN

SELECT Loja, SUM(Receita_Venda) AS 'Receita Total', SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos
RIGHT JOIN lojas ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY Loja;