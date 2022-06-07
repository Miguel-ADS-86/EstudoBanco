/*Consultas com Order By:
esta palavra order by é usada para ordenar conjunto de resultado de registros.
 - ASC : Ordem ascendente
 - DESC: Ordem descendente (inversa)

*/

SELECT * FROM tbl_livro
ORDER BY nome_livro ASC /*é o valor padrão do order by*/

SELECT * FROM tbl_livro
ORDER BY nome_livro DESC

/*------------------------------------------------------------------------------*/

/*SELECT DISTINCT:
Algumas colunas podem conter valores duplicados. Para exibir apenas valores diferentes
(distintos), use a palavra chave DISTINCT.

sintax: SELECT DISTINCT colunas FROM tabela
*/

SELECT DISTINCT id_autor FROM tbl_livro