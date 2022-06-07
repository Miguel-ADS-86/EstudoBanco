-- COMANDO DO SQL DDL (Linguagem de Definição de Dados) -----------------------------

/*CREATE*/
-- Com este comando podemos criar, banco, procedures, tabelas, view, trigger etc
--criamos objetos no banco de dados.

-- Sintaxe:
-- CREATE NomeObjeto

-- Sintaxe criar uma tabelas
-- os campos são separados por viergulas.

                --         TIPO COLUNA     CONSTRAINT
/* CREATE TABLE nomeTabela(INT    id   PRIMARY KEY IDENTITY, 
   nome VARCHAR(100) NOT NULL)
*/

------------ COMANDO ALTER --------------------------------------------------
-- Serve para alterar a estrutura de um objeto já existente.

-- Adicionando um novo campo na tabela SINTAXE:
/*  
-- nomeCampo(nome da coluna) tipoDoCampo(INT, VARCHAR ETC...)

ALTER TABLE nomeTabela  
    ADD nomeCampo tipoDoCampo,
	cpf VARCHAR(11)
    
*/

-- Alterando a tabela, alterando o tipo de dados
-- pode se usar para alterar constraint também
-- SINTAXE:
/*  
    ALTER TABLE nomeTabela
    ALTER COLUMN coluna novoTipoDeDados	
*/

-- Alterando a tabela, excluindo o campo 
--SINTAXE:
/* ALTER TABLE nomeTabela
   DROP COLUMN nomeColuna
*/

-- Apagando uma tabela no banco de dados
--sintaxe
/*   
    DROP TABLE nomeTabela
*/

-- Apagando objetos do Banco de dados view, function, procedure, trigger
--SINTAXE:
/*
    DROP VIEW vw_teste
	DROP FUNCTION fn_teste
	DROP PROCEDURE usp_teste
	DROP TRIGGER tr_teste

*/

-- COMANDO TRUNCATE COMANDO DDL E DML CONSIDERADO ----------------------
-- Apagando todos os registros da tabela.

--SINTAXE:
/*
     TRUNCATE TABLE nomeTabela
*/

-- CRIANDO UM OBJETO DO TIPO DATABASE
CREATE DATABASE BD_DDL

-- ALTERANDO O CONTEXTO DA QUERY PARA O BANCO DB_DDL
USE BD_DDL;

-- CRIANDO UM OBJETO DO TIPO TABELA
CREATE TABLE TB_DDL( 
MATRICULA TINYINT PRIMARY KEY, 
NOME VARCHAR(100) , 
SEXO CHAR(1))

-- ALTERANDO A ESTRUTURA DA TABELA, ADICIONANDO 2 COLUNAS NEM UMA TABELA
ALTER TABLE TB_DDL 
ADD DTNASC DATETIME, CPF CHAR( 11)

-- ALTERANDO A ESTRUTURA DA TABELA, ALTERANDO O TIPO DA COLUNA
ALTER TABLE TB_DDL 
ALTER COLUMN DTNASC DATE

-- ALTERANDO A ESTRUTURA DA TABELA, APAGANDO UMA COLUNA
ALTER TABLE TB_DDL 
DROP COLUMN SEXO;

-- APAGANDO O OBJETO TABELA
DROP TABLE TB_DDL;
