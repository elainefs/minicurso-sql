-- ORDER BY
/*
Exemplo 1: faça uma consulta na tabela de clientes e faça uma ordenação de acordo com o nome do cliente, em ordem alfabetica
*/

SELECT *
FROM clientes
ORDER BY Nome, Sobrenome;

/*
Exemplo 2: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com a renda anual, da maior para a menor
*/

SELECT *
FROM clientes
ORDER BY Renda_Anual DESC;

/*
Exemplo 3: Faça uma consulta na tabela de clientes e faça uma ordenação de acordo com a data de nascimento, em ordem do mais novo para o mais velho
*/ 

SELECT *
FROM clientes
ORDER BY Data_Nascimento DESC;