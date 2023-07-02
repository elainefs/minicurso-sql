# Minicurso SQL - Hashtag Treinamentos

## O que é uma tabela?
Uma tabela é composta por colunas e linhas que irão armazenar os dados.

As colunas podem ser chamadas de Campos ou Atributos

As linhas podem ser chamadas de Registros ou Tuplas

Sempre que for adicionar um dado novo na tabela, eu vou adicionar uma nova linha

Toda tabela precisa ter uma coluna de id, também chamado de chave primária, que vai ser útil para relacionar as tabelas.

## O que é um banco de dados?
Um banco de dados é um conjunto de tabelas que podem se relacionar entre si.

Um banco de dados também pode ser conhecido como um SCHEMA.

## Profissionais em bancos de dados
### Administrador de Dados (AD)
Profissional que conhece a fundo o processo empresarial, define as tabelas que serão criadas e os relacionamentos entre essas tabelas.

### Administrador de Banco de Dados (DBA)
A função de um DBA é garantir que o Banco de Dados esteja sempre funcionado, garantindo sua disponibilidade e otimização.

### Desenvolvedor de Banco de Dados (DB)
O DB tem um grande conhecimento de lógica de programação e é responsável por criar rotinas e gerenciar processos que são feitos dentro do próprio SGDB.

### Analista de Dados
Responsável por coletar, compilar e interpretar dados, promovendo estratégias para a empresa.

### Cientista de Dados
Especialista com habilidade para analisar grande volume de dados e interpretar informações de valor e apoiar na tomada de decisões dos negócios.

### Analista de Business Intelligence
Responsável pela coleta, organização e análise das informações de mercado que dão suporte a gestão de negócios.

## SQL: Structured Query Language
Para acessar os dados em um banco de dados é necessário realizar uma série de comandos, para isso é usado a linguagem de programação SQL.

O SQL é uma linguagem de banco de dados universal.

Uma query (consulta) é uma requisição de um dado presente nas tabelas do banco de dados.

## SGBD: Sistema de Gerenciamento de Bancos de Dados
Um SGBD permite trabalhar com diferentes tabelas de um banco de dados através de uma interface gráfica.

UM SGBD é composto essencialmente por 2 partes:
- Um **servidor** onde os ficam armazenados os bancos de dados
- Uma **interface** que nos permite escrever os códigos em SQL para acessar os bancos de dados

**Todos** os SGBD de banco de dados relacionais utilizam o SQL como linguagem de programação.

Alguns dos SGBD mais utilizados são: MySQL, SQLite, Oracle Database, Microsoft SQL Server e PostgreSQL.

## Instalação do MySQL
Para o uso do MySQL é preciso instalar o MySQL Server (servidor) e o MySQL Workbench (interface).

**Para Windows** a instalação pode ser feita baixando o instalador diretor do [site do MySQL](https://dev.mysql.com/downloads/).

Baixando o MySQL Installer for Windows será feita a instalação do MySQL Serve e também do MySQL Workbench.

Configurações durante a instalação:
- Choosing a Setup Type: Developer Default
- Check Requirements: Next> - Yes
- Downloads: Programas que serão instalado automaticamente
- Installation : Execute
- Product Configuration: Next>
- Type and Networking: Next>
- Authentication Method: (Recommended) Next>
- Accounts and Roles: criar senha para acessar o MySQL
- Windows Service: Next>
- Apply Configuration: Execute
- Product Configuration: Next>
- MySQL Router Configuration: Finish
- Connect To Server: Next>
- Apply Configuration: Execute

**Para Linux** a instalação do MySQL Server deve ser feita via terminal.

```
Adicionando o PPA:
$ wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb -O mysql-apt-config.deb

- Selecione a versão do MySQL a ser instalada

Instala o MySQL Server:
$ sudo apt install mysql-server

- Insira uma senha para o root do MySQL

Para alterações de segurança usar o comando:
$ sudo mysql_secure_installation

Para ver o status do MySQL
$ sudo systemctl status mysql.service

Para iniciar o MySQL:
$ sudo systemctl start mysql.service

Para reiniciar o MySQL:
$ sudo systemctl restart mysql.service

Para parar o MySQL:
$ sudo systemctl stop mysql.service

Para conectar-se ao banco de dados:
$ mysql -u root -p
```

Também é possível usar o **XAMPP** como servidor, basta instalá-lo e dar start no MySQL Database e abrir o MySQL Workbench que ele irá conectar. Caso o MySQL Workbench peça senha ao usar o XAMPP, basta deixar vazio e continuar.

Para instalar o MySQL Workbench no Linux é possível usar uma versão disponível no site, direcionada ao Ubuntu, ou instalar a versão Snap do programa.

## Criação de conexão no MySQL Workbench
Na tela inicial do MySQL Workbench irá aparecer uma conexão padrão chamada "Local instance".

Para criar uma nova conexão bastar clicar no ícone de (+) e uma tela de configurações irá abrir, na barra superior em Database>Manager Connections, também é possível criar e gerenciar as conexões.

Na tela de configurações é possível definir diversas configurações.

Para esse curso, dar apenas o nome de identificação para a conexão e deixar o resto como padrão e testar a conexão.

Se aparecer um erro de incompatibilidade de versões, apenas fechar e dar Ok para criar a conexão.

## Criação de Banco de Dados
Na interface do MySQL Workbench selecionar a opção "Create a new schema in the connected serve".

Pela interface do MySQL Workbench basta definir o nome do banco e aplicar.

O código SQL para criar um novo banco:
```sql
CREATE SCHEMA `nomeDoBanco`;

-- ou

CREATE DATABASE `nomeDoBanco`;
```

## Importar bancos para o MySQL Workbench
Antes de importar você deve criar o banco de dados com o mesmo nome do que você vai importar

No menu superior ir em: Server>Data Import

No menu que se abrir selecionar a pasta onde estão os arquivos do banco de dados que você quer importar.

Na caixa "Select Database Objects to Import" o nome do banco que você está importando irá aparecer, basta clicar sobre ele para selecioná-lo e clicar em "Start Import"

Alguns erros podem ocorrer ao importar, como a incompatibilidade do sistema de codificação, ou após importar as tabelas não aparecerem. Para resolver esses problemas [ver o arquivo corrigir-erros.md.](/notes/corrigir-erros.md)

## Manipulando banco de dados
Para começar a trabalhar em um banco de dados eu preciso informar em qual banco eu estou trabalhando antes de começar a rodar os comandos SQL.

No MySQL Workbench é possível definir um banco como padrão, basta clicar com o botão direito do mouse sobre o banco que eu quero trabalhar e selecionar "Set as Default Schema".

O código SQL para fazer via comando é:

```sql
USE nomedobanco;
```

Os comandos podem ser escritos em uma única linha, o importante é que cada comando deve ser finalizado com ponto e vírgula (`;`).

### SELECT *
Seleciona todas as colunas e todas as linhas de uma tabela. O `*` significa 'todas'.

Sintaxe:
```sql
SELECT *
FROM NomeDaTabela;
```

### SELECT FROM
Seleciona apenas as colunas especificadas. Cada coluna deve ser separada por vírgula.

Sintaxe:
```sql
SELECT Col1, Col2, Col3
FROM NomeDaTabela;
```

### SELECT AS
Essa seleção permite dar apelidos (alias) para as colunas.

Sintaxe:
```sql
SELECT
  Col1 AS 'Coluna 1',
  Col2 AS 'Coluna 2'
FROM NomeDaTabela;
```

### SELECT LIMIT
Essa seleção permite definir um limite de linhas que quero selecionar de uma tabela.

Sintaxe:
```sql
SELECT *
FROM NomeDaTabela
LIMIT 2;
```

### ORDER BY
Permite ordenar uma tabela a partir de uma ou mais colunas especificadas.

```sql
SELECT *
FROM NomeDaTabela
ORDER BY coluna1;
```

As colunas podem ser ordenadas em ordem Ascendente (ASC), que é o valor padrão, ou em ordem Descendente (DESC), que precisa ser informado.

```sql
SELECT *
FROM NomeDaTabela
ORDER BY coluna1 DESC;
```

### WHERE
O comando `WHERE` permite aplicar filtros nas tabelas e eles podem ser aplicados em mais de uma coluna ao mesmo tempo.

É possível usar três tipos de informação para aplicar filtros:
- Números
- Textos
- Datas

Para aplicar filtros em tabelas temos que usar os operadores relacionais

Operador | Função
---------|--------
> | Maior que
< | Menor que
>= | Maior ou igual à
<= | Menor ou igual à
= | Igual à
<> | Diferente de

Exemplo de Filtro de Números:
```sql
SELECT *
FROM NomeDaTabela
WHERE Col1 >= 2000;
```

Exemplo de Filtro de Textos
```sql
SELECT *
FROM NomeDaTabela
WHERE Col2 = 'Dell';
```

Exemplo de Filtro de Datas
```sql
SELECT *
FROM NomeDaTabela
WHERE Col3 = '2019-01-03';
```

### Aplicação de filtros em mais de uma coluna
Para aplicar filtros em mais de uma coluna devemos usar os operadores lógicos `AND` e `OR`.

Com `AND` todas as condições devem ser satisfeitas para que o resultado seja mostrado.

```sql
SELECT *
FROM NomeDaTabela
WHERE Col1 = 'S' AND Col2 = 'M';
```

Com `OR` apenas uma das condições precisa ser satisfeita para que o resultado seja mostrado.

```sql
SELECT *
FROM NomeDaTabela
WHERE Col1 = 'DELL' OR Col1 = 'SAMSUNG';
```

### SUM, COUNT, AVG, MIN e MAX
As funções de agregação tem o objetivo de realizar cálculos no SQL.

#### SUM
Retorna a soma total dos valores de uma coluna
```sql
SELECT SUM(Col1) AS 'Coluna 1'
FROM NomeDaTabela;
```

#### COUNT
Retorna a quantidade total de valores de uma coluna e ignora valores nulos presentes na coluna
```sql
SELECT COUNT(Col1) AS 'Coluna 1'
FROM NomeDaTabela
WHERE col1 = condição;
```

#### COUNT(*)
Retorna a quantidade total de linhas de uma tabela, mas não ignora valores nulos
```sql
SELECT COUNT(*)
FROM NomeDaTabela;
```

#### COUNT(DISTINCT)
Retorna a contagem distinta de valores de uma tabela
```sql
SELECT COUNT(DISTINCT Col1)
FROM NomeDaTabela;
```

#### AVG
Retorna a média dos valores de uma coluna
```sql
SELECT AVG(Col1) AS 'Coluna 1'
FROM NomeDaTabela; 
```

#### MIN
Retorna o valor mínimo de uma coluna
```sql
SELECT MIN(Col1) AS 'Coluna 1'
FROM NomeDaTabela;
```

#### MAX
Retorna o valor máximo de uma coluna
```sql
SELECT MAX(Col1) AS 'Coluna 1'
FROM NomeDaTabela;
```

### GROUP BY
O comando `GROUP BY` permite agrupar os dados de uma tabela, criando uma espécie de resumo dos dados.

```sql
SELECT Col1, COUNT(Col1) AS 'Coluna 1'
FROM NomeDaTabela
GROUP BY Col1;
```

## Primary key (Chave Primária) e Foreign key (Chave Estrangeira)
A **Chave Primária** de uma tabela é uma coluna que representa um identificador único e que não se repete na tabela. Geralmente é uma coluna ID. Toda tabela terá uma e somente uma Chave Primária. 

A **Chave Estrangeira** de uma tabela é uma coluna que permite relacionar as linhas de uma tabela com a Chave Primária de uma outra tabela. Uma tabela pode ter mais de uma Chave Estrangeira.

## JOIN
O `JOIN` permite relacionar tabelas através de uma coluna em comum (identificador). Com essa relação será possível usar informações de uma tabela em outra.

JOIN no SQL:

`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN` e `CROSS JOIN`

Estrutura de um JOIN
```sql
SELECT
  colunas
FROM
  nome_da_primeira_tabela 
JOIN (tipo_de_associação) nome_da_segunda_tabela 
ON (condição_de_associação)
```

Quando uma seleção feita requer dados de outra tabela, eu posso juntar a primeira tabela a segunda tabela. Eu uso as informações da segunda tabela para completar as informações da primeira tabela, sendo que elas possuem uma coluna em comum, onde na primeira tabela essa coluna é a chave estrangeira e na segunda tabela essa mesma coluna é a chave primária.

Opcionalmente é possível usar o `GROUP BY` ou `WHERE` para agrupar os resultados.

### INNER JOIN

O `INNER JOIN` vai permitir relacionar duas tabelas e criar uma nova tabela que é a junção das duas. A tabela resultante desse JOIN terá apenas as linhas que são a interseção entre as duas tabelas, ou seja, resulta em uma tabela que traz os valores que estão em ambas as tabelas inicias.

Para realizar o `INNER JOIN` eu posso usar a seguinte estrutura:
```sql
SELECT
  Tabela_A.coluna1,
  coluna2,
FROM
  Tabela_A
INNER JOIN Tabela_B
ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
GROUP BY Tabela_A.coluna1;
```

> **Dica:** Para selecionar o dado em comum nas duas tabelas eu devo indicar de qual tabela eu vou usar o dado: `Tabela_A.coluna1`, isso indica que eu quero a coluna1 da Tabela_A, que é a mesma presente na Tabela_B.

### LEFT JOIN
O `LEFT JOIN` retorna todos os dados da tabela da esquerda (primeira tabela), mesmo que eles não tenham relação com a tabela da direita (segunda tabela), e nesse caso os valores serão retornados como nulo.

Para realizar o `LEFT JOIN` eu posso usar a seguinte estrutura:
```sql
SELECT
  Tabela_A.coluna1,
  coluna2,
FROM
  Tabela_A
LEFT JOIN Tabela_B
ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
GROUP BY Tabela_A.coluna1;
```

### RIGHT JOIN
O `RIGHT JOIN` segue a mesma lógica do LEFT, só que para retornar todos os dados da tabela da direita.

Para realizar o `RIGHT JOIN` eu posso usar a seguinte estrutura:
```sql
SELECT
  Tabela_A.coluna1,
  coluna2,
FROM
  Tabela_A
RIGHT JOIN Tabela_B
ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
GROUP BY Tabela_A.coluna1;
```

### FULL JOIN
O `FULL JOIN` é o comando usado para unir todos os valores das duas tabelas em uma única tabela. Caso uma linha da primeira tabela não esteja associada a outra linha na segunda tabela, o retorno será nulo.

Para realizar o `FULL JOIN` eu posso usar a seguinte estrutura:
```sql
SELECT
  Tabela_A.coluna1,
  coluna2,
FROM
  Tabela_A
FULL JOIN Tabela_B
ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
GROUP BY Tabela_A.coluna1;
```

### CROSS JOIN
O `CROSS JOIN` une duas tabelas de modo que todos os itens de uma tabela estejam associados a cada item da outra.

Para realizar o `CROSS JOIN` eu posso usar a seguinte estrutura:
```sql
SELECT
  Tabela_A.coluna1,
  coluna2,
FROM
  Tabela_A
CROSS JOIN Tabela_B
WHERE Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
```