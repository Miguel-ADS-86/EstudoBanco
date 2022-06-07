/* inserindo dados dados usando comandos sql:
   
   insert into tabela(coluna1,coluna2)
   values(valor1,valor2)
   
   e podemos inserir mais de um registro no mesmo insert exemplo:
   
   insert into tabela(coluna1,coluna2)
   values(valor1,valor2),(valor1,valor2),(valor1,valor2)
*/

INSERT INTO tbl_autores
(nome_autor,sobrenome_autor)
VALUES('Daniel','Barret'),('Gerald','Carter'),('Mark','Sobell'),
('William','Stanek'),('Richard','Blum')


INSERT INTO tbl_editoras 
(nome_editora) values ('Prentice Hall'),
('O Reilly'),('Microsoft Press'),('Wiley')

INSERT INTO tbl_livro(nome_livro,isbn,data_pub,preco_livro,
id_autor,id_editora)
VALUES('Linux Command Line and Shell Scripting',143856969,'20091221',
68.35,5,4),('SSH the Secure Shell',127658789,'20091221',58.30,1,2),
('Using Samba',123856789,'20001221',61.45,2,2)

select * from tbl_livro






