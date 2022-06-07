/*usando a clausula UPDATE*/
-- SINTAX DO UPDATE
-- UPDATE tabela
-- SET coluna = valor
-- WHERE coluna = valor

/*é sempro bom colocar a qualsula where, pois ela serve como um filtro */

/*exemplo:
  UPDATE tbl_livro
  SET data_pub = '20040517'
  where id_livro = 116
*/


-- exemplo 01 atualizando a data ou alterando a data.
UPDATE tbl_livro
SET data_pub = '20001221'
where id_livro = 119

-- exemplo 02 alterando ou  atualizando o preço de um livro
UPDATE tbl_livro
SET preco_livro = 65.45
WHERE id_livro = 102

-- exemplo 03 atualizando mais de uma coluna 
UPDATE tbl_livro
SET preco_livro = 80,
isbn ='0202020' 
WHERE id_livro = 101

select * from tbl_livro



