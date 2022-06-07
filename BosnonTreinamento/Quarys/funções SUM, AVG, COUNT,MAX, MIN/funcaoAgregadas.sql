-- FUNÇÕES AGREGADAS -> SUM, AVG, COUNT, MAX, MIN,
-- MIN = Valor mínimo
-- MAX = Valor máximo
-- AVG = Média aretimetrica
-- SUM = Total Soma
-- COUNT = Contar quantidade de itens
/*estas funções agregadas para fazer calculos simples*/

-- ele me traz a quantidade de autores cadastrados
-- podemos tambem colocar o nome da coluna da tabela
/*Se a tabela permitir valores null na coluna ele vai trazer só os não nulos*/
SELECT COUNT(*) FROM tbl_autores
SELECT COUNT(nome_autor) FROM tbl_autores

-- Traz o valor máximo da coluna que você colocar entre parenteses traz o preço 
--mais caro do livro
SELECT MAX(preco_livro) FROM tbl_livro


-- Traz o valor mínimo o preço mais barato do livro
SELECT MIN(preco_livro) FROM tbl_livro

-- vai tirar a media aritimetrica ele soma os valores todos da coluna preço de livro
-- e vai dividir pelo numero de itens.
SELECT AVG(preco_livro) FROM tbl_livro

-- ele soma todos os valores da coluna e traz o total
SELECT SUM(preco_livro) FROM tbl_livro
