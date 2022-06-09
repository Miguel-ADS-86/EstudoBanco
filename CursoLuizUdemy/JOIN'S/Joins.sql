
-- CLAUSULA INNER JOIN ELE ME TRAZ OS DADOS QUE TEM CONRRESPONDENCIAS EM AMBAS TABELAS

SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
INNER JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO

-- LEFT JOIN: RETORNA TODA AS LINHAS DA TABELA A ESQUERDA MESMO QUE NÃO TENHA CORRESPONDENCIA
-- NA TABELA A DIREITA, GERALMENTE A TABELA ESQUERDA FICA DEPOIS DO FROM

SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
LEFT JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO

-- EU POSSO PEGAR TODOS OS FUNCIONÁRIOS QUE NÃO TEM DEPARTAMENTO
SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
LEFT JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO
WHERE D.CODIGO IS NULL

-- CLAUSULA RIGHT JOIN - retorna todas as linhas da tabela a direita mesmo que não
-- haja na tabela a esquerda.
SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
RIGHT JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO

-- FULL JOIN: combina os resultados de esquerda e direita, a consulta trara os registros de 
-- ambas tabelas mesmo que uma linha de dados não esteja associada a outra

SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
FULL JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO

-- TRAZENDO SO OS VALORES QUE NÃO TEM CORRESPONDÊNCIAS EM AMBAS AS TABELAS
SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
FULL JOIN DEPARTAMENTO AS D
ON F.CODDEPTO = D.CODIGO
WHERE F.CODDEPTO IS NULL
OR D.CODIGO IS NULL

-- CROSS JOIN: ele combina o resultado das duas tabelas, formando um produto
--cartesiano ele faz a multiplicação de uma tabela com a outra
/*Exemplo:
se a tabela A tem 8 registros e a tabela B tem 6 registros ele vai retornar 48 regitros,
tendo como a base a tabela da esquerda: 8 registros do valor A com a 6 registros
do valor B valor1 até ser multiplicado cada registro do valor A com o valor B.
   Tabela A                 Tabela B
    maria                   valor1
	jose leandro            valor1
	maria                   valor1
	jose leandro            valor1
	maria                   valor1
	jose leandro            valor1
	maria                   valor1
	jose leandro            valor1

	maria                   valor2
	jose leandro            valor2
	maria                   valor2
	jose leandro            valor2
	maria                   valor2
	jose leandro            valor2
	maria                   valor2
	jose leandro            valor2
*/
SELECT F.NOME AS FUNCIONÁRIO,F.SALARIO, D.DESCRICAO AS DEPARTAMENTO
FROM FUNCIONARIO 
AS F 
CROSS JOIN DEPARTAMENTO AS D

-- SELF JOIN: é um conceito e não um comando propiamente dito. Ele é caracterizado
-- modelagem como auto relacionamento.
 
 SELECT F.MATRICULA, F.NOME AS FUNCIONARIO, S.NOME AS SUPERVISOR,
 S.CODSUPERVISOR, FUN.DESCRICAO
 FROM FUNCIONARIO AS F
 INNER JOIN FUNCIONARIO AS S
 ON F.CODSUPERVISOR = S.MATRICULA
 INNER JOIN FUNCAO AS FUN
 ON F.CODFUNCAO = FUN.CODIGO

 SELECT * FROM FUNCIONARIO