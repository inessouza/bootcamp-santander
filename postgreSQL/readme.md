<h2 align="center"> Introdução ao banco de dados PostgreSQL | 1º Módulo </h2>

<h4>O que é o PostgreSQL?</h4>
Sistema de gerenciamento de banco de dados relacional. Teve início no Departamento de Ciência da Computação na Universidade da Califórnia
em Berkeley em 1986.

<h4>Modelo de Banco Relacional</h4>
Modelo mais comum, que classifica e organiza as informações em tabelas com linhas e colunas. As linhas ou tuplas são dados organizados, são os valores das tabelas, e as colunas são os atributos destes dados.

<h4>Tabelas</h4>
Conjuntos de dados dispostos em colunas e linhas referentes a um objetivo comum. As colunas são consideradas como "campos da tabela", como atributos da tabela. As linhas de uma tabela são chamadas também de tuplas e é onde estão contidos os valores, os dados.

<h4>O que são dados?</h4>
Valores brutos, fatos brutos, observações documentadas, registros soltos, que são recolhidos e armazenados sem sofrer qualquer tratamento.

<h4>O que são informações?</h4>
Estruturação de dados, organização de dados. Conjunto de dados relacionados entre si que geram valor, que criam sentidos aos dados. Material do conhecimento.

<h2 align="center"> Objetos e tipos de dados do PostgreSQL | 2º Módulo </h2>

<h4>Datatabase:</h4>
É o banco de dados. Grupo de schemas e seus objetos, como tabelas, types, views,
funções, entre outros. Seus schemas e objetos não podem ser compatilhados entre si.
Cada database é separado um do outro compartilhando apenas usuários/roles e configurações
do cluster PostgreSQL.

<h4>Schemas:</h4>
É um grupo de objetos, como tabelas, types, views, funções, entre outros.
É possível relacionar objetos entre diversos schemas. Por exemplo: schema public
e schema curso podem ter tabelas com o mesmo nome relacionando-se entre si.

<h4>Objetos:</h4>
São as tabelas, views, funções, types, sequences, entre outros, pertencentes aos 
schemas.

<h4>Primary Key / Chave Primária:</h4>
É um conjunto de um ou mais campos que nunca se repetem em uma tabela e que seus valores garantem
a integridade do dado único e a utilização do mesmo como referência para o relacionamento
entre demais tabelas.

<h4>Foreign Key / Chave Estrangeira:</h4>
Campo ou conjunto de campos que são referência de chaves primárias de outras tabelas 
ou da mesma tabela. Sua principal função é garantir a integridade referencial entre tabelas.

<h4>Tipos de dados:</h4>

<img src="http://1.bp.blogspot.com/-3KWYCX6CIK0/UEKJycQIVgI/AAAAAAAAApY/pcdrvA0p3po/s1600/num%C3%A9ricos+inteiros.PNG"/>
<img src="http://4.bp.blogspot.com/-2O3bmLy46uM/UEKJlNuYopI/AAAAAAAAApI/s2qAp51vOM0/s1600/texto+binario.PNG"/>
<img src="http://1.bp.blogspot.com/-xSAww4oTaCo/UELghIl6i9I/AAAAAAAAAqU/UWv1AIi8lYU/s1600/enum+e+set.PNG"/>
<img src="http://2.bp.blogspot.com/-mIVvNRtVra4/UEKMFauVtLI/AAAAAAAAApw/7p62ovAC2kw/s1600/datas.PNG"/>
<img src="http://4.bp.blogspot.com/-BYls_u9yGtA/UELgwhSVqEI/AAAAAAAAAqc/veBsx1ZogPE/s1600/bit+e+boll.PNG"/>

<h4>DML</h4>
Data Manipulation Language (Linguagem de Manipulação de Dados)

<h4>DDL</h4>
Data Definition Language (Linguagem de Definição de Dados)

<br/> 

<h2 align="center">Fundamentos da Structured Query Language (SQL) | 3º Módulo </h2>

<h3>Comando Truncate:</h3>
Serve para esvaziar a tabela, temos que ter muito cuidado ao usa-lo.

<h3> Funções agregadas em PostgreSQL: </h3>

<h4> AVG: </h4>
Esta função traz a média de valores.

_Exemplo:_

``` 
SELECT AVG(valor) FROM cliente_transacoes;
``` 

<h4> COUNT (opção: HAVING): </h4>
Esta função traz a contagem de dados. Com a opção HAVING ele traz os valores conforme a condição solicitada.

_Exemplo:_

``` 
SELECT COUNT(numero) FROM cliente;
``` 

Com a opção HAVING ele traz os valores conforme a condição solicitada.

_Exemplo:_

```
SELECT COUNT(id), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id HAVNG COUNT(id) > 150;
```

<h4> MAX: </h4>
Esta função traz o maior número.

_Exemplo:_

```
SELECT MAX(numero) FROM cliente;
```

<h4> MIN: </h4>
Esta função traz o menor número.

_Exemplo:_

```
SELECT MIN(numero) FROM cliente;
```

<h4> SUM: </h4>

Esta função traz a soma de todos os valores.

_Exemplo:_

```
SELECT SUM(valor) FROM cliente_transacoes;
```

<h3> JOINS </h3>

Joins são utilizados para unir tabelas.

_Exemplo:_ 

``` 
SELECT banco.numero FROM banco JOIN agencia ON agencia.banco_numero = banco.numero;
``` 

<h4> Left Join: </h4>

Traz dados da tabela a esquerda (tabela 1), e se houver um relacionamento ele traz dados da tabela da direita (tabela 2).

_Exemplos:_ 

``` 
SELECT banco.numero FROM banco LEFT JOIN agencia ON agencia.banco_numero = banco.numero;
``` 

``` 
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome 
FROM banco LEFT JOIN agencia ON agencia.banco_numero = banco.numero;
``` 

<h4> Right Join: </h4>

Traz dados da tabela a direita (tabela 2), e se houver um relacionamento ele traz dados da tabela da esquerda (tabela 1).

_Exemplo:_

``` 
SELECT agencia.numero, agencia.nome, banco.numero, banco.nome 
FROM agencia RIGHT JOIN banco ON banco.numero = agencia.banco_numero;
``` 

<h4> Full Join: </h4>

Traz todas as possibilidades de relacionamento entre tabelas.

_Exemplo:_

``` 
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome 
FROM banco FULL JOIN agencia ON agencia.banco_numero = banco.numero;
``` 

<h4> Cross Join: </h4>

Todos os dados de uma tabela serão cruzados com todos os dados da tabela referenciada no CROSS JOIN, criando uma matriz.
Este comando não é muito recomendado, pois desperdiça recursos,  de preferência, devemos usa-lo apenas em casos extremos.

_Exemplo:_

```
SELECT tbla.valor, tblb.valor FROM teste_a tbla CROSS JOIN teste_b tblb;
```

<h4> CTE - Common Table Expressions: </h4>

Forma auxiliar de organizar "statements", ou seja, blocos de códigos, para consultas muito grandes, gerando tabelas temporárias e criando relacionamentos entre elas.
Dentro dos statements podem ter SELECTs, INSERTs, UPDATES ou DELETs.

_Exemplo:_

```
WITH tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
)
SELECT numero, nome
FROM tbl_tmp_banco;
```

<h3> Views </h3>

Views são visões, são "camadas" para tabelas, são "alias" para uma ou mais queries. Aceitam comandos de SELECT, INSERT, UPDATE e DELETE.

<h4> Temporary </h4>

View presente apenas durante a sessão do usuário, se houver 
desconexão esta View não estará mais disponível.

_Exemplo:_ 

```
CREATE OR REPLACE TEMPORARY VIEW vw_bancos AS (
	SELECT numero, nome, ativo
	FROM banco
);
```

<h4> Recursive </h4>

Esta view fará com que o comando dentro do seu interior chamará ela mesma, 
criando uma espécie de loop.
Nesta view é obrigatório a existência dos campos da View, e é obrigatório
a utilização do UNION ALL.

_Exemplo:_

```
CREATE OR REPLACE RECURSIVE VIEW (nome_da_view)(campos_da_view) AS
	SELECT base
	UNION ALL
	SELECT campos
	FROM tabela_base
	JOIN (nome_da_view)
);
```

<h3> Transações </h3>

Conceito fundamental de todos os sistemas de banco de dados. Conceito de mútiplas 
etapas/códigos reunidos em apenas uma transação, onde o resultado precisa ter
tudo ou nada.

<h3> Funções </h3>

São conjuntos de códigos que são executados dentro de uma transação com a finalidade
de facilitar a programação e obter o reaproveitamento/reutilização de códigos.

Existem quatro tipos de funções:
- Query language (funções escritas em SQL)
- Procedural language functions (funções escritas em, por exemplo, PL/pqSQL ou PL/py)
- Internal functions
- C-language functions

<div align="center">

<h2>Status do Curso: Concluído</h2> 

<img src="https://github.com/inessouza/bootcamp-santander/blob/main/postgreSQL/imagens/certificado-InesSouza.PNG?raw=true" />
	
</div>
