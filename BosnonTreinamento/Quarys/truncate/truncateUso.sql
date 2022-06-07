/*comando truncate: Remove todas as linhas de uma tabela sem registrar as excluysões
, de linhas individuais.
TRUNCATE TABLE é como a instrução DELETE sem usar o where. entretando o truncate 
é mais rapido e ultiliza mesnos recursos de sistema e log de transações.*/

/*exemplo de Truncate*/
TRUNCATE TABLE tbl_autores

/*este count(*) ele mostra quantos registros tem na tabela no momento*/
SELECT COUNT(*) FROM  tbl_autores
