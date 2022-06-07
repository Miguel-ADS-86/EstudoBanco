----------- OUTER JOINS -----------------
-- NO CODIGO A TABELA QUE VOCÊ RELACIONA PRIMEIRO É A TABELA DA ESQUERDA E A TABELA QUE VOCÊ COLO
--CA DEPOIS DO INNER JOIN A DA DIREITA.

-- LEFT JOIN -> RETORNA TODAS AS LINHAS DA TABELA A ESQUERDA, MESMO SE NÃO HOUVER NENHUMA
-- CORRESPONÊNCIA NA TABELA À DIREITA.

-- RIGHT JOIN -> RETORNA TODAS AS LINHAS DA TABELA A DIREITA, MESMO QUE SE NÃO HOUVER NEHUMA
-- CORRESPONDÊNCIA NA TABELA  À ESQUERDA

-- FULL JOIN -> RETORNA LINHAS QUANDO OUVER UMA CORRESPONDÊNCIA EM QUALQUER UMA DAS TABELAS
-- É UMA COMBINAÇÃO DE LEFT E RIGHT JOINS.

-------   EXEMPLOS ----------------------------------
-- SINTAX DO LEFT JOIN:

/* SELECT coluna FROM tabela
   LEFT JOIN tabela 
   ON tabela.ColunaEsquerda = tabela.ColunaDireita
*/
-- VANTAGENS DE USAR O LEFT JOIN:
-- É VOCÊ PODER TRAZER TODOS OS DADOS DA TABELA A ESQUERDA  E MOSTRA TAMBEM OS RELACIONAMENTOS
-- DA TABELA A DIREITA.

SELECT * FROM tbl_autores
LEFT JOIN tbl_livro
ON tbl_autores.id_autor = tbl_livro.id_autor

select * from tbl_livro

-- USANDO LEFT JOIN EXCLUINDO CORRESPONDENCIA:
-- OU SEJA ELE TRAZ TOODS OS DADOS QUE ESTÁ A ESQUERDA SEM CORRESPONDÊNCIA COM A TABELA DA DIREITA
-- SINTAX:
/*
    SELECT coluna FROM tablela_esquerda
	LEFT JOIN tabela_direita 
	ON tablela_esquerda.coluna = tabela_direita.coluna
	WHERE tabela_direita.coluna IS NULL

   
*/
   SELECT * FROM tbl_livro
   LEFT JOIN tbl_editoras
   ON tbl_livro.id_editora = tbl_editoras.id_editora
   WHERE tbl_editoras.id_editora IS NULL
   -- usamos o filtro WHERE E A PALAVRA RESERVADA IS NULL
   -- o operado = ele não trabalh com a palavra null se usa o IS NULL
   -- Exemplo WHERE coluna = NULL não fnciona, forma correta é WHERE coluna IS NULL

------- EXEMPLO RIGHT JOIN --------------------
/* pe identuco ao LEFT JOIN só muda o lado, invez de ser a esquerda é a direita.

SINTAX:

SELECT colunas FROM tabela_esquerda
RIGHT JOIN tabela_direita
ON tabela_esquerda.coluna = tabela_direita.coluna
*/

-- coluna traz todos os dados da tabela da direita que tenha ou não correpondencia na esquerda
SELECT * FROM  tbl_editoras
RIGHT JOIN tbl_livro
ON tbl_livro.id_editora = tbl_editoras.id_editora

--traz os dados que não tem correspondencia na tabela a direita
SELECT * FROM  tbl_editoras
RIGHT JOIN tbl_livro
ON tbl_livro.id_editora = tbl_editoras.id_editora
WHERE tbl_editoras.id_editora IS NULL -- onde a tabela da esquerda é nula sempre a outra tabela

------------- FULL JOIN ---------------------------------------------
/* FULL JOIN: ELE TRAZ OS REGISTROS QUE TEM CORRESPONDÊNCIAS ENTRE AS TABELAS
, MAIS OS REGISTROS QUE NÃO TEM CORRESPONDÊNCIAS NAS DUAS TABELAS.
*/

-- SINTAX:
/*
	SELECT coluna FROM tabela
	FULL JOIN  tabela 
	ON tabela.coluna = tabela.coluna
*/

SELECT id_livro, li.nome_livro, ed.id_editora, ed.nome_editora FROM tbl_livro AS li
FULL JOIN tbl_editoras AS ed 
ON li.id_editora = ed.id_editora


-- traz os valores que não tem correspondência entre as tabelas
SELECT id_livro, li.nome_livro, li.id_editora AS 'FK Editora Livro',
ed.nome_editora, ed.id_editora FROM tbl_livro AS li
FULL JOIN tbl_editoras AS ed 
ON li.id_editora = ed.id_editora
WHERE li.id_editora IS NULL
OR ed.id_editora IS NULL

