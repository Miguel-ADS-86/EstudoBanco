-- SELECT INTO 
/* permite selecionar dados de uma ou mais tabelas e os insere em uma tabela 
diferente.
pode ser usado para criar cópias de backup de tabelas

sintax:
   SELECT * INTO nova_tabela FROM
   tabela_atual

   -- pode ser todas as colunas ou colunas especificas.
   
   SELECT * INTO nova_tabela FROM
   tabela_atual
   WHERE id_livro > 2
   -- podemos usar filtros como o where.
*/

   SELECT id_livro, nome_livro INTO backup_livro FROM
   tbl_livro
   WHERE id_livro <= 105

   select * from backup_livro
