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

<img src="https://github.com/inessouza/bootcamp-santander/blob/main/postgreSQL/imagens/tiposNumericos.PNG?raw=true"/>
<img src="https://github.com/inessouza/bootcamp-santander/blob/main/postgreSQL/imagens/caracteres.PNG?raw=true"/>
<img src="https://github.com/inessouza/bootcamp-santander/blob/main/postgreSQL/imagens/datas.PNG?raw=true"/>
<img src="https://github.com/inessouza/bootcamp-santander/blob/main/postgreSQL/imagens/boolean.PNG?raw=true"/>

<h4>DML</h4>
Data Manipulation Language (Linguagem de Manipulação de Dados)

<h4>DDL</h4>
Data Definition Language (Linguagem de Definição de Dados)
