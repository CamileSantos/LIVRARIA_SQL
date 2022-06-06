CREATE TABLE livros (
cod_livros int PRIMARY KEY ,
titulo varchar(100),
autor varchar(100) 
);

CREATE TABLE amigos (
cod_amigos int PRIMARY KEY,
nome varchar(100),
idade integer 
);

CREATE TABLE emprestimos (
cod_emprestimos int PRIMARY KEY ,
id_livros integer ,
id_amigos integer,
data_emprestimo date ,
);

ALTER TABLE emprestimos ADD CONSTRAINT fk_livros FOREIGN KEY (cod_livros) REFERENCES livros (cod_livros);
ALTER TABLE emprestimos ADD CONSTRAINT fk_amigos FOREIGN KEY (cod_amigos) REFERENCES amigos (cod_amigos);

insert into livros (cod_livros, titulo, autor)
VALUES (1,'Crepusculo','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (2,'Lua Nova','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (3,'Vida e morte','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (4,'Eclipse','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (5,'A breve segunda vida de Bree Tanner','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (6,'Amanhecer','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (7,'Harry Potter e a Pedra Filosofal','Stephenie Meyer')

insert into livros (cod_livros, titulo, autor)
VALUES (8,'Coraline','Neil Gaiman')

insert into livros (cod_livros, titulo, autor)
VALUES(9,'Revolucao dos bichos','George Orwell')

insert into livros (cod_livros, titulo, autor)
VALUES (10,'1984','George Orwell')

select * from livros

insert into amigos (cod_amigos, nome, idade)
VALUES (1,'Jonathan','21')

insert into amigos (cod_amigos, nome, idade)
VALUES (2,'Rodrigo','18')

insert into amigos (cod_amigos, nome, idade)
VALUES (3,'Bruna','18')

insert into amigos (cod_amigos, nome, idade)
VALUES (4,'Carlos','20')

insert into amigos (cod_amigos, nome, idade)
VALUES (5,'Robson','38')


select * from amigos

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (1,1,3,'04/06/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (2,8,4,'29/05/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (3,4,2,'18/04/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (4,1,6,'01/03/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (5,2,1,'06/05/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (6,10,5,'06/05/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (7,1,5,'06/05/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (8,6,7,'06/05/2022')

insert into emprestimos (cod_emprestimos, id_livros, id_amigos, data_emprestimo)
VALUES (9,7,7,'06/05/2022')

select * from emprestimos

select l.cod_livros, l.titulo, a.cod_amigos, a.nome,a.idade, e.data_emprestimo
	from emprestimos as e
	inner join amigos as a on a.cod_amigos = e.id_amigos
	inner join livros as l on l.cod_livros = e.id_livros
