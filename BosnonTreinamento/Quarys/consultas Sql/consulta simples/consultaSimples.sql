/*Consultas simples sql*/
/*como se usa o select exemplo:
select especifica o nome de uma coluna from e nome da tabela que quer trazer a informa-
ção.
*/

/*traz o registro de uma coluna da tabela autores*/
SELECT nome_autor FROM tbl_autores

/*traz todos os registros da tabela autores, todas as colunas e linhas*/
SELECT * FROM tbl_autores

/*neste caso eu seleciono as colunas que eu quero da tabela autores e 
na ordem que eu quiser*/
SELECT nome_autor, id_autor FROM tbl_autores

/*seleciono as colunas e ordeno pelo nome do livron em ordem alfabetica*/
SELECT nome_livro, isbn FROM tbl_livro
ORDER BY nome_livro