CREATE DATABASE planetaalien;
USE planetaalien;

CREATE TABLE usuario(
	id int primary key auto_increment,
    nome varchar(70) NULL,  /* NULL = nulo (não-obrigatório)*/
	apelido varchar(70) NOT NULL,
    email varchar(80) NOT NULL,
    senha nchar(8) NOT NULL
);

INSERT INTO usuario(nome,apelido,email,senha) VALUES 
('Rômulo Cesar','jogador-da-cei','jogao@gmail.com','34567898'),
('Tatiene','taty','taty@gmail.com','12345678'),
('Flávio','flavinho','flv@gmail.com','87654321'),
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Vitória','vity','vity@gmail.com','87651234'),
('Pedro','doca','doca@gmail.com','14725836'),
('Luis','carga','lz@gmail.com','96385274');


SELECT apelido FROM usuario;
SELECT id, apelido, senha FROM usuario;

DELETE FROM usuario WHERE ID=1;

UPDATE usuario SET apelido = 'lu-metralha' WHERE ID=7;

SELECT * FROM usuario;

INSERT INTO usuario(nome,apelido,email,senha) VALUES 
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Artur','tu-tu','tuts@gmail.com','12348765'),
('Artur','tu-tu','tuts@gmail.com','12348765');

DELETE FROM usuario WHERE ID>7;

SHOW TABLES;
DESCRIBE usuario;

CREATE TABLE bloom(
id int primary key auto_increment,
nome VARCHAR(70)
);

INSERT INTO bloom(nome) VALUES
('Memorizar'),
('Compreender'),
('Aplicar'),
('Analizar'),
('Avaliar'),
('Criar');

SELECT * FROM bloom;

