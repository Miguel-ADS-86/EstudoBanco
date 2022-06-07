/*Comando Alter: é possivel alterar a estrutura de uma tabela após ter sido criada
, acrescentando ou excluindo atributos depois que foi criada*/

/*-------------------Alter table Drop---------------------------------------*/
/*excluindo uma coluna*/
ALTER TABLE tbl_livro
DROP COLUMN id_autor

/*excluindo uma CONSTRAINT:*/
ALTER TABLE tabela
DROP CONSTRAINT nome_contraint

/*------------------ALTER TABLE ADD-------------------------------------------*/
ALTER TABLE tbl_livro
ADD id_autor SMALLINT NOT NULL
CONSTRAINT fk_id_autor FOREIGN KEY(id_autor)
REFERENCES tbl_autores