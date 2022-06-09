CREATE DATABASE BD_UNIAO_CONSULTAS
GO
USE BD_UNIAO_CONSULTAS
GO
CREATE TABLE A(
    ID INT NOT NULL,
    NOME VARCHAR(10) NOT NULL)
 
CREATE TABLE B(
    ID INT NOT NULL,
    NOME VARCHAR(10) NOT NULL)
 
INSERT INTO A VALUES (1, 'José'), (2, 'Maria'), (3, 'João')
INSERT INTO B VALUES (2, 'Maria'), (3, 'Guilherme'), (4, 'Vitória')
 
 
--UNION ele cria um unico conjunto de resultados baseado na união de varias consultas
/*Requisitos do Union:
 1 - as duas consultas devem conter o mesmo número de colunas
 2 - os tipos de dados devem corresponder para cada coluna
 3 - a clausula order by, deve ser utilizado no ultimo select a ser feito

 principal diferença do UNION para o UNION ALL
 UNION-> remove qualquer linha duplicada, no conjunto de resultados, ele possui um DISTINCT
 implícito.
 UNION ALL -> inclui os registros duplicados.

 obs: se for criar um Alies ela fica na consulta A ou na primeira consulta, ela é responsavel
 pelo cabeçário.
*/
--UNION não retorna valores duplicados
SELECT ID, NOME FROM A
UNION 
SELECT ID, NOME FROM B
 
--UNION ALL -> retorna valores repitidos
 
SELECT ID , NOME FROM A
UNION ALL
SELECT ID , NOME FROM B
 
 
--EXCEPT realiza a diferença entre a coluna A e B, elementos que não pertencem a A e a B
-- ele retorna os dados que pertencem a primeira consulta mais não pertencem a segunda
-- dados que não tem correspondencia em A e nem em B, exemplo valores que só tem em A.
SELECT ID, NOME FROM A
EXCEPT
SELECT ID, NOME FROM B
 
--INTERSECT -> retorna apenas linhas que são comuns, ou seja valores que tem correspondências
-- em ambas as tabelas de A e B
 
SELECT ID, NOME FROM A
INTERSECT
SELECT ID, NOME FROM B