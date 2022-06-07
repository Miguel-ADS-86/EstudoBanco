-- Comando Union e comando Alias
/*Alias: pode-se dar um nome diferente a uma coluna ou tabela em uma consulta.*/

-- Exemplo:

SELECT nome_livro AS 'livro' FROM tbl_livro

-- OPERADOR UNION --
/*Permite combinar duas ou mais declara��s SELECT.
Cada declara��o select deve ter o mesmo n�mero de colunas, o o mesmo tipos de dados e ordem 
das colunas.
 sintax:
    SELECT colunas FROM tabela1
	UNION
	SELECT colunas FROM tabela2

*/
   /*ELE  MOSTRA TODOS os ids tanto s� o id da tabela autor como o id_autor que esta na tabela
    tbl_livro*/
    SELECT id_autor, nome_autor FROM tbl_autores
	UNION ALL -- USANDO O ALL ELE TRAZ OS ID DE AUTORES MAIS O ID DE AUTORES LIVROS
	SELECT id_livro, nome_livro FROM tbl_livro
	
	/*Aqui ele so mostra o id da tabela autor mas n�o o id do autor que esta na tabela livro
	que � a chave estrangeira*/
	SELECT id_autor, nome_autor FROM tbl_autores
	UNION 
	SELECT id_livro, nome_livro FROM tbl_livro

	/*Um uso pratico de um operador union, por exemplo um banco de dados de um super Mercado
	e voc� cadastrou os produtos em tabelas diferentes de acordo com o g�nero do produto, 
	ent�o fez uma tabela para produtos de limpeza, alimenticio, bebidas. E as informa��es dos
	produtos est�o em tabelas diferentes, e eu preciso ter um relat�rio que mostre o nome de 
	todos os produtos que eu tenha no supermercado, ent�o eu posso fazer um UNION das 3 tabelas,
	ai eu vou ter o nome de todos os produtos como se ele estivesse em uma �nica tabela.
	*/

