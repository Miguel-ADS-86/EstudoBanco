/*----------Comando BETWEEN-------------*/
-- S�o intervalos em consultas, geralmente utiliza com a clausula where para fazer
-- um intervalo de filtragem
/*Sintax:
    SELECT colunas FROM tabela
	WHERE coluna BETWEEN valor1 AND valor2
*/

SELECT data_pub FROM tbl_livro
WHERE data_pub BETWEEN '20040517' AND '20100517'

SELECT nome_livro, preco_livro FROM tbl_livro
WHERE preco_livro BETWEEN 60.00 and 70.00

------------ Filtragem por padfr�es Especificos --------------------
/*LIKE E NOT LIKE*/
-- POR PADR�O OS OPERADORES LIKE E NOT LIKE S�O UTILIZADOS JUNTOS COM O WHERE
/*Determina se uma cadeia de caracteres espec�fica corresponde a um padr�o especificado.
Um padr�o poder incluir caracteres normais ou curingas.

Exempolo: selecionar a tabela pessoa que seus nomes iniciem com a letra 'a' usando o like
ele vai me trazer todos os registros que iniciem com a letra 'a'


-- NOTE LIKE
Inverte a compara��o, verificando se a cadeia de caracteres n�o correspondem 
ao padr�o especificado.
exemplo: trazer todos os registros que n�o tenham a letra 'a' iniciando.
*/

/*Sintax:
   SELECT colunas FROM tabela
   WHERE coluna LIKE padr�o
*/

/* -- PADR�ES ESPEC�FICOS ---
  
  '%' -> QUALQUER CADEIA DE 0 OU MAIS CARACTERES 
  '_' -> SUBLINHADO: QUALQUER CARACTER �NICOS, ELE PULA O CARACTER
 '[]' -> QUALQUER CARACTER �NICO NO INTERVALO OU CONJUNTO ESPECIFICADO
         ([A-H];[AEIOU])
 '[^]' -> QUALQUER CARACTER �NICO QUE N�O ESTEJA NO INTERVALO OU CONJUNTO ESPECIFICADO
          OU CONJUNTO ESPECIFUICADO ([A-H];[AEIOU])

*/
----------------- EXEMPLOS ---------------------------------------
SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE 'S%' -- N�O IMPORTA O QUE VEM DEPOIS 0 OU MAIS CARACTERES

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '%G' -- 0 OU MAIS CARACTERES NA FRENTE MAIS NO FINAL A LETRA G
                           -- PARA PEGAR O ULTIMO VALOR S� INVERTER A PORCENTAGEM

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '_I%' -- O SUBLINAHDO ELE PULA A PRIMEIRA LETRAE VOCE PODE PULAR QUANTAS
--LETRAS QUISER ESCOLHO A LETRA i E COLOCO A % POIS O QUE VEM DEPOIS DO I N�O ME INTERESSA
-- AI PEGO TODOS COM A %

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '[SL]%' -- ELE VAI PESQUISAR MAIS DE UMA LETRA USAMOS O CONJUNTO[]
-- E INFORMAMOS EM QUAL POSI��O [SL]E QUANDO COLOCO A PORCENTAGEM POR ULTIMO S�O AS PRIMEIRAS
--LETRAS S OU L E N�O IMPORTA O QUE VEM DEPOIS

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '%[SL]' -- livros que terminam com S ou L

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '_[IS]%' -- segunda letra iniciando com  I ou S

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro LIKE '_I__O%' -- TRAZENDO O VALOR ONDE A SEGUNDA LETRA � I E A QUINTA � O

SELECT nome_livro 
FROM tbl_livro
WHERE nome_livro NOT LIKE 'M%' -- TRAZ O NOMES DE LIVROS QUE N�O COMESSA COM A LETRA M