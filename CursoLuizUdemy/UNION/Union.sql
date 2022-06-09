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
 
INSERT INTO A VALUES (1, 'Jos�'), (2, 'Maria'), (3, 'Jo�o')
INSERT INTO B VALUES (2, 'Maria'), (3, 'Guilherme'), (4, 'Vit�ria')
 
 
--UNION ele cria um unico conjunto de resultados baseado na uni�o de varias consultas
/*Requisitos do Union:
 1 - as duas consultas devem conter o mesmo n�mero de colunas
 2 - os tipos de dados devem corresponder para cada coluna
 3 - a clausula order by, deve ser utilizado no ultimo select a ser feito

 principal diferen�a do UNION para o UNION ALL
 UNION-> remove qualquer linha duplicada, no conjunto de resultados, ele possui um DISTINCT
 impl�cito.
 UNION ALL -> inclui os registros duplicados.

 obs: se for criar um Alies ela fica na consulta A ou na primeira consulta, ela � responsavel
 pelo cabe��rio.
*/
--UNION n�o retorna valores duplicados
SELECT ID, NOME FROM A
UNION 
SELECT ID, NOME FROM B
 
--UNION ALL -> retorna valores repitidos
 
SELECT ID , NOME FROM A
UNION ALL
SELECT ID , NOME FROM B
 
 
--EXCEPT realiza a diferen�a entre a coluna A e B, elementos que n�o pertencem a A e a B
-- ele retorna os dados que pertencem a primeira consulta mais n�o pertencem a segunda
-- dados que n�o tem correspondencia em A e nem em B, exemplo valores que s� tem em A.
SELECT ID, NOME FROM A
EXCEPT
SELECT ID, NOME FROM B
 
--INTERSECT -> retorna apenas linhas que s�o comuns, ou seja valores que tem correspond�ncias
-- em ambas as tabelas de A e B
 
SELECT ID, NOME FROM A
INTERSECT
SELECT ID, NOME FROM B