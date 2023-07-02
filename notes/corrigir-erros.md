# Corrigindo erros no MySQL Workbench

> Os erros a seguir ocorreram ao tentar usar o MySQL Workbench no Linux.

## Erro ao importar banco de dados no MySQL Workbench

Se ao tentar importar o banco de dados um erro semelhante a esse aparecer:

```
Operation failed with exitcode 1
21:07:30 Restoring banco (produtos)
Running: /snap/mysql-workbench-community/12/usr/lib/mysql-workbench/mysql --defaults-file="/tmp/tmp77kwk7ly/extraparams.cnf"  --protocol=tcp --host=127.0.0.1 --user=root --port=3306 --default-character-set=utf8 --comments --database=banco < "/home/elaine/MinicursoSQL/BancoDeDados/banco_produtos.sql"
ERROR 1273 (HY000) at line 25: Unknown collation: 'utf8mb4_0900_ai_ci'
```
### Como corrigir

Abrir os arquivos `.sql` do banco quero importar e mudar a codificação 

Substituir	`utf8mb4` por `utf8`
Substituir	`utf8_unicode_520_ci` por `utf8_general_ci`

Dentro do próprio MySQL Workbench é possível ver a codificação padrão que ele usa.

Dentro da conexão, na aba "Administration" ir em "Status and System Variables" e depois selecionar a aba "System Variables" e pesquisar por "character" e "collation" para verificar quais o MySQL Workbench está usando e mudar nos arquivos que quero importar.

## Tabelas não aparecem após importação
Se após finalizada a importação as tabelas não aparecerem no banco e um erro semelhante a esse aparecer: 

```
Column count of mysql.proc is wrong. Expected 20, found 16. Created with MySQL 50045, now running 50142. Please use mysql_upgrade to fix this error.
```
Abrir o terminal e navegar até:

`/opt/lampp/bin/`

E rodar o seguinte comando:

`sudo ./mysql_upgrade`

Em seguida dar um refresh no banco.