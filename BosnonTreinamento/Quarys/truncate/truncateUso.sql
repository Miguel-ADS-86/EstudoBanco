/*comando truncate: Remove todas as linhas de uma tabela sem registrar as excluys�es
, de linhas individuais.
TRUNCATE TABLE � como a instru��o DELETE sem usar o where. entretando o truncate 
� mais rapido e ultiliza mesnos recursos de sistema e log de transa��es.*/

/*exemplo de Truncate*/
TRUNCATE TABLE tbl_autores

/*este count(*) ele mostra quantos registros tem na tabela no momento*/
SELECT COUNT(*) FROM  tbl_autores
