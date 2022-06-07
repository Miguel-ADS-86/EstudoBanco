--TOP: Especifica número de registros a retornar, e ele é usado com o Select
/*
  TOP - ele é usado para retorna um percentual de regirtro ou uma quantidade 
  
  Sintax:
  SELECT TOP 10 PERCENT coluna FROM Tabela - traz percentual
  SELECT TOP 5 coluna FROM Tabela - Traz 5 primeiros registros ou o numero que definir
*/

SELECT TOP 2 nome_livro FROM tbl_livro -- SEM USAR PERCENTUAL
SELECT TOP 1 PERCENT nome_livro FROM tbl_livro -- USANDO PERCENTUAL
SELECT TOP 2 * FROM tbl_livro -- USANDO TODAS AS COLUNAS

SELECT * FROM tbl_livro