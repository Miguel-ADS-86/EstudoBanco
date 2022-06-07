/* 
comando de banco de dados */

 /*criando o banco e usando o banco 
 create database bd_borson_treinamento
 use bd_borson_treinamento*/

--/////////////////////////////////////////////////////////////////////

/*sp_helpdb informa o tamanho e crescimento e local do banco de dados.*/
 -- sp_helpdb bd_automacao_club_1

--////////////////////////////////////////////////////////////////////////

 /*restrições ou constraints, são regras que são aplicadas nas colunas da tabela 
 principais constraints
 
 * not null -> não aceita valores nulos 
 * unique  -> identifica de forma unica cada registro de uma tabela.
 * primary key -> automaticamente possui a restrição unique
 * foreign key -> é um campo de uma tabela que aponta para uma chave primaria em uma outra tabela
 * check -> limita uma faixa de valores que podem ser colocados em uma coluna.
 * default -> é usado para inserir um valor padrão em uma coluna
 */

 --////// criando tabela do banco de dados

 -- NO IDENTITY ESTOU DIZENDO QUE VAI INICIAR DE 100 E ELE VAI SUBINDO DE 1 EM 1
 CREATE TABLE tbl_livro(id_livro SMALLINT PRIMARY KEY IDENTITY(100,1),
 nome_livro VARCHAR(50)NOT NULL,
 isbn VARCHAR(30)NOT NULL UNIQUE,
 id_autor SMALLINT NOT NULL,
 data_pub DATETIME NOT NULL,
 preco_livro MONEY NOT NULL
 )

 CREATE TABLE tbl_autores(id_autor SMALLINT PRIMARY KEY IDENTITY,
 nome_autor VARCHAR(50),
 sobrenome_autor VARCHAR(60)
 )

CREATE TABLE tbl_editoras(id_editora SMALLINT PRIMARY KEY IDENTITY,
nome_editora VARCHAR(50)NOT NULL)

-- OBSERVAÇÃO SP_HELP TABELA, INFORMA CHAVES E CAMPOS, ATRIBUTOS, TIPOS DE ATRIBUTOS
-- DE UMA TABELA(STORE PROCEDURE E COMANDOS PRÉ-PROGRAMADOS)

/*-----------------COMANDO DE ALTER ------------------------ */

-- deletamos uma coluna na tabela
/*ALTER TABLE tbl_livro
  DROP COLUMN id_autor*/

-- pode-se excluir uma constraint
/* ALTER TABLE tabela
   DROP CONSTRAINT nome_constraint
*/

-- adicionar uma coluna na tabela livro
/*
ALTER TABLE tbl_livro
ADD id_autor SMALLINT NOT NULL
CONSTRAINT fk_id_autor FOREIGN KEY(id_autor)
REFERENCES tbl_autores
*/

-- adicionar uma coluna natabela livro
/*ALTER TABLE tbl_livro
  ADD id_editora SMALLINT FOREIGN KEY(id_editora)
  REFERENCES tbl_editora
  */

-- adicionando uma chave primaria
/*
  a coluna id_livro tem que existir antes para se torna chave primaria dessa forma feita
  ALTER TABLE tbl_livro
  ADD CONSTRAINT PRIMARY KEY(id_livro)
               ou
	 ALTER TABLE pessoa
	 ADD id_pessoa SMALLINT 
	 CONSTRAINT id_pessoa PRIMARY KEY(id_pessoa)

    --criando uma coluna id_pessoa e colocando seu auto incremento
     alter table pessoa
     add id_pessoa smallint identity  
     constraint id_pessoa primary key(id_pessoa)
*/

 ALTER TABLE tbl_livro
 DROP COLUMN id_autor

 ALTER TABLE tbl_livro
 ADD id_autor SMALLINT NOT NULL
 CONSTRAINT id_autor FOREIGN KEY(id_autor)
 REFERENCES tbl_autores

 ALTER TABLE tbl_livro
 ADD id_editora SMALLINT
 CONSTRAINT id_editora FOREIGN KEY(id_editora)
 REFERENCES tbl_editoras

 -- comando para excluir uma tabela
 DROP TABLE NOME DA TABELA

 /*
  RESUMO DO ALTER 

  (PARA EXCLUIR UMA COLUNA)

  ALTER TABLE nome da tabela
  DROP nome da coluna.

  (PARA EXCLUIR UMA CONTRAINT)

  ALTER TABLE nome da tabela
  DROP  CONSTRAINT nome da constraint
  
  (PARA ADICIONAR UMA COLUNA)

  ALTER TABLE nome da tabela
  ADD nome da coluna e tipo
  CONSTRAINT nome do tipo criado para chave estrangeira FOREIGN KEY(chave criada)
  REFERENCES a outra tabela
 */

 --estou na aula 10 inserindo dados 
