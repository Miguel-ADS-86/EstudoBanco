---------------   JOINS  ---------------------
-- CORRESPONDÊNCIA INFORMAÇÃO DE UMA TABELA FOR ENCONTRADA EM OUTRA TABELA TAMBÉM.
-- exemplo: encontrou o nome do livro associado ao nome do autor, ou seja ouve corres
--pondência.

/*A palavra JOIN é usada para obter dados de duas ou mais tabelas, baseado em
relacionamento entre colunas entre tabelas.*/

-- INNER JOIN:
/*RETORNA LINHAS QUANDO HOUVER PELO MENOS UMA CORRESPONDÊNCIA EM AMBAS AS TABELAS*/

-- OUTER JOIN:
/*RETORNA LINHAS MESMO QUANDO NÃO HOUVER PELOMENOS UMA CORRESPONDÊNCIA EM UMA DAS 
TABELAS OU EM AMBAS*/

-- O OUTER JOIN ELE SE DIVIDI EM LEFT JOIN, RIGHT JOIN E FULL JOIN

----------------------------------------------------------------------------------


-------- SINTAX INNER jOIN ---------------------------------
/*
SELECT coluna FROM tabela1
INNER JOIN tabela2 
ON tabela1.coluna = tabela2.coluna
*/

select * from tbl_livro
-- inner join de 2 tabelas
SELECT * FROM tbl_livro
INNER JOIN tbl_autores
ON tbl_livro.id_autor= tbl_autores.id_autor

--INNER JOIN DE 3 TABELAS E USANDO ALIAS
SELECT autores.nome_autor, autores.sobrenome_autor,
livro.nome_livro, livro.data_pub, editora.nome_editora, livro.preco_livro
FROM tbl_livro AS livro
INNER JOIN tbl_autores AS autores
ON livro.id_autor= autores.id_autor
INNER JOIN tbl_editoras AS editora
ON livro.id_editora = editora.id_editora