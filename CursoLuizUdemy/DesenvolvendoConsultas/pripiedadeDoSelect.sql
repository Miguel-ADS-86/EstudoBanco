CREATE DATABASE BD_CONSULTAS;  
 
USE BD_CONSULTAS;
 
CREATE TABLE  TB_FUNC (
MATRICULA INT PRIMARY KEY IDENTITY,
NOME VARCHAR (255) NOT NULL,
DATANASCIMENTO DATE NOT NULL,
SALARIO MONEY NULL,
DATAADMISSAO DATE DEFAULT (GETDATE()),
DATADEMISSAO DATE NULL,
INICIOFERIAS DATE NULL,
FIMFERIAS DATE NULL,
STATUS_FUNC VARCHAR (20) CHECK (STATUS_FUNC IN ('ATIVO','INATIVO','FERIAS','LICENÇA','INSS')),
CODDEPTO INT)
 
INSERT INTO TB_FUNC (NOME, DATANASCIMENTO,SALARIO,DATAADMISSAO,DATADEMISSAO,INICIOFERIAS,FIMFERIAS, STATUS_FUNC, CODDEPTO)
VALUES ('ANA MARIA', '2000-01-01', 1200.55, '2018-05-01',NULL,NULL,NULL, 'ATIVO', 1),
('JOSE HENRIQUE', '1998-11-20', 2575.55, '2005-09-01','2017-12-01',NULL,NULL, 'INATIVO', 7),
('ANA MARIA', '2002-08-21', 950.00, '2019-01-01',NULL,NULL,NULL, 'ATIVO', 6),
('LUAN FELIX', '1991-09-28', 3500.00, '2013-04-01',NULL,NULL,NULL, 'ATIVO', 1),
('FELIPE JOSE DOS SANTOS', '1996-01-11', 4000, '2011-05-01','2015-01-29',NULL,NULL, 'INATIVO', 2),
('MARCELO JOSE', '1980-10-05', 7000, '2000-05-01',NULL,'2019-05-01','2019-06-01', 'ATIVO', 2),
('MARIANA MARIA', '1987-02-08', 4500, '2010-01-01',NULL,NULL,NULL, 'INSS', 3),
('JULIANA MARIA DOS SANTOS', '2002-01-01', 2000, '2017-05-01',NULL,NULL,NULL, 'LICENÇA', 5),
('MARIA ALICIA', '2001-01-01', 950, '2018-05-01',NULL,NULL,NULL, 'ATIVO', 4)
	
INSERT INTO TB_FUNC (NOME, DATANASCIMENTO,SALARIO,STATUS_FUNC, CODDEPTO)
VALUES ('MARIA ALICIA', '2003-09-18', 950,  'ATIVO', 3)
 
 /*Propiedades do Select*/
 /*
 O comando select possui uma estrutura, e é executado em uma ordem lógica
 para retornar as informações.

  * SELECT : SELECIONA A LISTA DE RESULTADOS
  * FROM: AONDE VOU BUSCAR MEUS DADOS
  * WHERE: O QUE EU QUERO FILTRAR DOS DADOS
  * GROUP BY: AGRUPA OS DADOS 
  * HAVING: FILTRA O VALOR DO AGRUPAMENTO
  * ORDER BY: ORDENA O RESULTADO
 */

 /*COMANDO SIMPLES*/
 /*
   SELECT <campos da tabela>
   FROM<tabela, view,function>
   WHERE <filtro>
   ORDER BY <campos> ASC/DESC
 */

 /*Como o Select é executado internament:
    primeiro comando a ser executado : FROM.
	segundo comando a ser executado :  WHERE.
	terceiro comando a ser executado : GROUP BY.
	quarto comando a ser executado : HAVING.
	quinto comando a ser executado : SELECT.
	sexto comando a ser executado : ORDER BY.

 */

/*order by*/
 
-- asc por padrão quando não passsamos
SELECT * 
FROM TB_FUNC
ORDER BY NOME
 
-- por 2 colunas asc
SELECT * 
FROM TB_FUNC 
ORDER BY NOME , SALARIO
 
-- desc
SELECT * 
FROM TB_FUNC 
ORDER BY NOME DESC
 
-- por 2 colunas, 1 asc, 1 desc
-- o comando Orde by : pontos positivos ordena suas consultas, negativos perde um pouco de performasse
SELECT * 
FROM TB_FUNC 
ORDER BY NOME ASC, SALARIO DESC
 
/* OPERADORES LÓGICOS: AND | OR | NOT */
 
--AND
/*Avalia as condições e devolve um valor verdadeiro caso ambas retornem verdadeiro,
caso um for verdadeira e a outra falsa ele retorna vazio.
IS clausula de retorno booleano exemplo IS NULL= é nulo*/
SELECT  MATRICULA, NOME, DATADEMISSAO, STATUS_FUNC
FROM TB_FUNC
WHERE DATADEMISSAO IS NULL
AND STATUS_FUNC = 'ATIVO'
 
-- OR
/*Avalia as condições e devolve o valor verdadeiro se algum for correto*/
SELECT  MATRICULA, NOME, DATADEMISSAO, STATUS_FUNC
FROM TB_FUNC
WHERE DATADEMISSAO IS NULL
OR STATUS_FUNC = 'ATIVO'
 
--NOT 
/*ela devolve o valor contrario da expresão*/
SELECT 
MATRICULA, NOME, SALARIO, STATUS_FUNC
FROM TB_FUNC
WHERE NOT STATUS_FUNC = 'ATIVO'
 
/* OPERADORES ARITMÉTICOS */
-- NO PROPIO SELECT EU POSSO FAZER UMA ADIÇÃO, SUBTRAÇÃO, PERCENTUAL E DIVISÃO
SELECT 
NOME,SALARIO AS BRUTO,
SALARIO + 50 AS ADICAO,
SALARIO - 20 AS SUBTRACAO,
SALARIO * 1.20  AS AJUSTE_20_PCENTO,
SALARIO / 2 AS DIVISAO
FROM TB_FUNC
WHERE STATUS_FUNC = 'ATIVO'
 
/* OPERADORES RELACIONAIS */
 
SELECT * 
FROM TB_FUNC
WHERE STATUS_FUNC = 'ATIVO'
 
 
SELECT * 
FROM TB_FUNC
WHERE DATANASCIMENTO >= '1999-01-01'
 
SELECT * 
FROM TB_FUNC
WHERE SALARIO >= 2000 
AND SALARIO <= 4000
 
SELECT * 
FROM TB_FUNC
WHERE STATUS_FUNC <> 'ATIVO'
 
/* OPERADORES AUXILIARES */
 
-- IS NULL usado para trazer valores nulos 
SELECT * 
FROM TB_FUNC
WHERE DATADEMISSAO IS NULL
 
-- IS NOT NULL usado para trazer valores não nulos
SELECT * 
FROM TB_FUNC
WHERE DATADEMISSAO IS NOT NULL
 
-- BETWEEN ele traz valores entre o seu filtro, dentro de um range
 
SELECT * 
FROM TB_FUNC            -- valor inicial     valor final
WHERE DATAADMISSAO BETWEEN '2012-01-01' AND '2018-12-20'
 
SELECT * 
FROM TB_FUNC
WHERE DATAADMISSAO NOT BETWEEN '2017-01-01' AND '2017-12-20'
 
SELECT * 
FROM TB_FUNC
WHERE CODDEPTO BETWEEN 5 AND 15
 
-- IN utilizado para verificar se o valor procurado está dentro de uma lista de valores
-- TAMBÉM POSSO NEGAR USANDO O NOT IN
SELECT * 
FROM TB_FUNC
WHERE STATUS_FUNC IN ('ATIVO','FERIAS')
 /*podemos usar no filtro MONTH(passando a coluna que recebe a data) usando o 
  o IN(numero do mes 1, numero do mes 2)*/
SELECT * 
FROM TB_FUNC
WHERE MONTH(DATAADMISSAO) IN (1,2)
 
SELECT * 
FROM TB_FUNC 
WHERE MONTH(DATAADMISSAO)  NOT IN (10,11)
 
--LIKE utilizado para fazer busca em campos com valores de texto, podemos usar a % 
-- para ajudar na busca.É considerado um caracter coringa no LIKE
/*LIKE 'jose%' palavra que inicia com jose
  LIKE '%jose' palavra que termina com jose


*/
SELECT * 
FROM TB_FUNC
WHERE NOME LIKE 'JOSE'
 
SELECT * 
FROM TB_FUNC
WHERE NOME LIKE 'JOSE%'
 
SELECT * 
FROM TB_FUNC
WHERE NOME LIKE '%JOSE'
 
SELECT * 
FROM TB_FUNC
WHERE NOME LIKE '%JOSE%' -- no meio da palavra
 
/*CLAUSULAS EXTRAS*/


 
-- ALIAS apelidos que damos as tabelas e a colunas somente no momento do select
SELECT
F.NOME AS 'NOME FUNCIONÁRIO',
'DATA DE ADMISSÃO' = F.DATAADMISSAO,
F.SALARIO 'SALÁRIO FUNCIONÁRIO'
FROM TB_FUNC AS F
 
--CASE 1 forma:
/*Utilizado para fazer analize logica, do valor da coluna
e retorna caso seja verdadeiro ou falço, e sempre que se usa o case fecha com o end

Sintax do case:

SELECT nome_coluna
CASE nome_coluna -> que eu quero fazer a analize lógica
WHEN 'exemplo' THEN 'A'  -> no when quer dizer onde o valor do nome_coluna for 'exemplo' 
                           então bote o valor A ai usamos o -> then 'A'  
ELSE -> se não atender a logica acima coloque M, o Else é opcional.
  'M'
END nome_coluna -> finaliza o case
FROM  nome_da_tabel

*/
SELECT NOME, STATUS_FUNC,
CASE STATUS_FUNC
	WHEN 'ATIVO' THEN 'A'
	WHEN 'INATIVO' THEN 'I'
	WHEN 'FERIAS' THEN 'F'
ELSE
	'O'
END SIGLA_STATUS -- apelido para o case
FROM TB_FUNC

-- CASE 2 FORMA não passamos a coluna no CASE, e utilizamos quando eu quero fazer mais de 
-- uma condição lógica.e entre o WHEN <condição lógica> THEN então bote valor
SELECT NOME, SALARIO,
CASE 
	WHEN SALARIO > 1200 AND SALARIO < 1500 THEN SALARIO * 1.1
	WHEN SALARIO > 1501 AND SALARIO < 2000 THEN SALARIO * 1.2
	WHEN SALARIO < 1000 THEN SALARIO
END SALARIO_COM_REAJUSTE
 
FROM TB_FUNC

/*RESUMO DO CASE, ELE CRIA UMA NOVA COLUNA COM O VALOR A SER INSERIDO NA MESMA DE ACORDO 
COM AS CONDIÇÕES INSERIDAS NELE. */
 
-- DISTINCT
 
SELECT DISTINCT NOME 
FROM TB_FUNC
 
SELECT DISTINCT NOME, SALARIO
FROM TB_FUNC
 
SELECT DISTINCT NOME, SALARIO, DATANASCIMENTO 
FROM TB_FUNC
 
-- TOP
SELECT 
TOP 5 MATRICULA, 
NOME 
FROM TB_FUNC
 
SELECT 
TOP 5 MATRICULA, 
NOME 
FROM TB_FUNC 
ORDER BY MATRICULA DESC
