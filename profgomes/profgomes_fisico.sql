CREATE DATABASE profgomes;
USE profgomes;




CREATE TABLE Aluno (
    nome VARCHAR(45),
    numerod_aluno INT PRIMARY KEY auto_increment,
    semestre INT,
    ano INT
);

insert into Aluno(nome,semestre,ano)values('Adriano',2,2023);
insert into Aluno(nome,semestre,ano)values('Bruno',2,2023);
insert into Aluno(nome,semestre,ano)values('Carlos',2,2023);
insert into Aluno(nome,semestre,ano)values('Danielle',2,2023);
insert into Aluno(nome,semestre,ano)values('Eliza',2,2023);
insert into Aluno(nome,semestre,ano)values('Fabiano',2,2023);
insert into Aluno(nome,semestre,ano)values('Gustavo',2,2023);
insert into Aluno(nome,semestre,ano)values('Heloísa',2,2023);
insert into Aluno(nome,semestre,ano)values('Ingrid',2,2023);
insert into Aluno(nome,semestre,ano)values('João',2,2023);
insert into Aluno(nome,semestre,ano)values('Kelly',2,2023);
insert into Aluno(nome,semestre,ano)values('Luiz',2,2023);
insert into Aluno(nome,semestre,ano)values('Mauro',2,2023);
insert into Aluno(nome,semestre,ano)values('Nádia',2,2023);
insert into Aluno(nome,semestre,ano)values('Otávio',2,2023);
insert into Aluno(nome,semestre,ano)values('Pâmela',2,2023);
insert into Aluno(nome,semestre,ano)values('Quenya',2,2023);
insert into Aluno(nome,semestre,ano)values('Rômulo',2,2023);
insert into Aluno(nome,semestre,ano)values('Sabrina',2,2023);
insert into Aluno(nome,semestre,ano)values('Tatiane',2,2023);
insert into Aluno(nome,semestre,ano)values('Ulle',2,2023);
insert into Aluno(nome,semestre,ano)values('Victória',2,2023);
insert into Aluno(nome,semestre,ano)values('Xavier',2,2023);
insert into Aluno(nome,semestre,ano)values('Yolanda',2,2023);
insert into Aluno(nome,semestre,ano)values('Zilda',2,2023);
insert into Aluno(nome,semestre,ano)values('Arthur',2,2023);
insert into Aluno(nome,semestre,ano)values('Bella',2,2023);
insert into Aluno(nome,semestre,ano)values('Carla',2,2023);
insert into Aluno(nome,semestre,ano)values('Denilson',2,2023);
insert into Aluno(nome,semestre,ano)values('Elson',2,2023);
insert into Aluno(nome,semestre,ano)values('Flávia',2,2023);
insert into Aluno(nome,semestre,ano)values('Giovani',2,2023);
insert into Aluno(nome,semestre,ano)values('Hercules',2,2023);
insert into Aluno(nome,semestre,ano)values('Indira',2,2023);
insert into Aluno(nome,semestre,ano)values('Joelma',2,2023);
insert into Aluno(nome,semestre,ano)values('Kyle',2,2023);
insert into Aluno(nome,semestre,ano)values('Leandro',2,2023);
insert into Aluno(nome,semestre,ano)values('Mirian',2,2023);
insert into Aluno(nome,semestre,ano)values('Nayara',2,2023);
insert into Aluno(nome,semestre,ano)values('Osvaldo',2,2023);

select * from Aluno;



CREATE TABLE Turma (
    cod_disciplina INT PRIMARY KEY auto_increment,
    sala INT,
    numero INT UNIQUE
);
drop table Turma;

alter table Turma
drop column numero;

alter table Turma
add column num_turma int unique;

alter table Turma
add column nome_disciplina varchar(45);

INSERT INTO Turma(sala,num_turma,nome_disciplina)VALUES('101',1,'Front End');
INSERT INTO Turma(sala,num_turma,nome_disciplina)VALUES('102',2,'DBA');

update Turma
set sala = 102
where num_turma = 1;

update Turma
set sala = 101
where num_turma = 2;

select * from Turma;



CREATE TABLE Professor (
	matricula INT PRIMARY KEY auto_increment,
    nome VARCHAR(45),
    unidade varchar(45)
);

INSERT INTO Professor(nome,unidade)Values('Luciano', 'SENAI Taguatinga');
INSERT INTO Professor(nome,unidade)Values('Gomes', 'SENAI Taguatinga');

update Professor
set unidade = 'SENAI Brasília'
where matricula = 2;

select* from Professor;

CREATE TABLE INSCRITO (
    FK_Aluno_numerod_aluno INT,
    FK_Turma_cod_disciplina INT
);

insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (1,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (2,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (3,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (4,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (5,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (6,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (7,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (8,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (9,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (10,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (11,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (12,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (13,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (14,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (15,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (16,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (17,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (18,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (19,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (20,1);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (21,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (22,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (23,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (24,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (25,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (26,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (27,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (28,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (29,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (30,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (31,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (32,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (33,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (34,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (35,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (36,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (37,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (38,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (39,2);
insert into INSCRITO (fk_Aluno_numerod_aluno, fk_Turma_cod_disciplina) values (40,2);
 
select * from Turma;
select * from Aluno;
select * from Professor;
select * from INSCRITO;

select nome from Aluno order by nome asc;