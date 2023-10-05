CREATE DATABASE bardodba;
USE bardodba;

CREATE TABLE Garcon 
(
/*Criar um CAMPO INTEIRO e chave primária autoincremental*/
    id INT PRIMARY KEY auto_increment,
    /*Criar um campo do tipo string (texto) com tamanho 50*/
    nome VARCHAR(50)
);

/*Inserindo o primeiro garçom do bar do DBA*/
insert into garcon(nome) values ('Celso');
insert into garcon(nome) values ('Miqueias');
insert into garcon(nome) values ('Artur');

/*Pesquisar todos (*) os garçons*/
select * from garcon;

CREATE TABLE mesa 
(
    id INT PRIMARY KEY auto_increment,
    localizacao NCHAR(2)
);

insert into mesa(localizacao) values('a1');
insert into mesa(localizacao) values('a2');
insert into mesa(localizacao) values('a3');
insert into mesa(localizacao) values('a4');
insert into mesa(localizacao) values('a5');

select * from mesa;

CREATE TABLE comanda 
(
    id INT PRIMARY KEY auto_increment,
    valor DECIMAL(5,2),
    fechada TINYINT(1),
    estrelas INT,
    fk_mesa_id INT,
    fk_Garcon_id INT
);
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_2
    FOREIGN KEY (fk_mesa_id)
    REFERENCES mesa (id)
    ON DELETE CASCADE;
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_3
    FOREIGN KEY (fk_Garcon_id)
    REFERENCES Garcon (id)
    ON DELETE CASCADE;