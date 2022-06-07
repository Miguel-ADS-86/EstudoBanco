/*Clausula Where
Permite filrtrar registros em uma consulta.

sintax: SELECT colunas FROM tabela WHERE coluna = valor
*/

SELECT * FROM tbl_livro WHERE id_editora = 1

SELECT id_autor FROM tbl_autores WHERE 
sobrenome_autor = 'Stanek'

/*----------------------------------------------------------------------------------*/

/*
   Operadores AND e OR é muito usado com o WHERE

   * usados para filtrar registros baseados em mais de uma condição.
   * Operadores AND monstra um registro se ambas as condições forem verdadeiras.
   * Operador OR mostra registro se pelo menos uma das condições for verdadeira.
*/

/*Exemplo:*/

SELECT * FROM tbl_livro
WHERE id_livro > 2 AND id_autor < 3

SELECT * FROM tbl_livro
WHERE id_livro > 2 OR id_autor < 3