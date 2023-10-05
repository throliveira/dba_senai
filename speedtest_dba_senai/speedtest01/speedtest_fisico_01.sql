/*Um cliente necessita de um software para armazenar nomes de pessoas.*/

/*DDL - Data Defenition Language*/
CREATE DATABASE speedtest01; /*Criando um banco de dados*/ 
USE speedtest01; /*Usando um banco de dados*/
CREATE TABLE pessoa
(
	id int primary key auto_increment,
    nome varchar(80)
);
INSERT INTO pessoa(nome)values('Tatiene');
INSERT INTO pessoa(nome)values('Vitória');
INSERT INTO pessoa(nome)values('Lucas');
INSERT INTO pessoa(nome)values('Luis');
INSERT INTO pessoa(nome)values('Flávio');
INSERT INTO pessoa(nome)values('Artur');
INSERT INTO pessoa(nome)values('João');
SELECT * FROM pessoa;
