CREATE DATABASE avoltadoplanetaalien;
USE avoltadoplanetaalien;

CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);

INSERT INTO verbo (nomeverbo) VALUES
		('listar'),
        ('relembrar'),
        ('reconhecer'),
        ('identificar'),
        ('localizar'),
        ('descrever'),
        ('citar'),
        ('esquematizar'),
        ('relacionar'),
        ('explicar'),
        ('demonstrar'),
        ('parafrasear'),
        ('associar'),
        ('converter'),
        ('utilizar'),
        ('implementar'),
        ('modificar'),
        ('experimentar'),
        ('calcular'),
        ('demonstrar'),
        ('classificar'),
        ('resolver'),
        ('categorizar'),
        ('diferenciar'),
        ('comparar'),
        ('explicar'),
        ('integrar'),
        ('investigar'),
        ('defender'),
        ('delimitar'),
        ('estimar'),
        ('selecionar'),
        ('justificar'),
        ('comparar'),
        ('elaborar'),
        ('desenhar'),
        ('produzir'),
        ('prototipar'),
        ('traçar'),
        ('idear'),
        ('inventar'),
        ('desmontar'),
        ('destruir '),
        ('contradizer '),
        ('separar '),
        ('isolar '),
        ('desfazer '),
        ('fragmentar'),
        ('reverter '),
        ('mudar '),
        ('reorganizar '),
        ('reaplicar '),
        ('testar '),
        ('avaliar '),
        ('comprovar '),
        ('revisar '),
        ('idealizar '),
        ('redefinir '),
        ('alinhar '),
        ('modelar '),
        ('validar '),
        ('finalizar'),
        ('introduzir '),
        ('contextualizar '),
        ('explicar '),
        ('informar '),
        ('traduzir '),
        ('exemplificar '),
        ('testar');
        
SELECT * FROM verbo;

CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(40)
);

INSERT INTO bloom (nome) VALUE 
		('MEMORIZAR'),
        ('COMPREENDER'),
        ('APLICAR'),
        ('ANALIZAR'),
        ('AVALIAR'),
        ('CRIAR'),
        ('DESCONSTRUIR'),
        ('INVERTER'),
        ('RECRIAR'),
        ('ENSINAR');
        
SELECT * FROM bloom;


CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(200)
);

INSERT INTO historia (titulo) VALUES ('Planeta Alien (A Revolta do Furão');
INSERT INTO historia (descricao) VALUES
		('No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens.
A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.');
INSERT INTO historia (final) VALUES
		('Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.');
      
SELECT * FROM historia;
        
CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);

INSERT INTO competencia (descricao) VALUES
		('Listar tags HTML para encontrar pistas de como escapar do cativeiro alienígina. As psitas serão os seletores e lugares onde deverão ser usados na próxima missão'),
        ('Utilizar seletores CSS em lugares descobertos antes para modificar o cenário da  e encontrar uma passagem secreta que leva para fora da prisão.'),
        ('Criar scripts para assumir o controle dos robôs penitenciários e fugir para uma estação espacial onde tentará sequestrar uma nave. '),
        ('O furão deve reconhecer as excetions espalhadas na estação espacial para conseguir burlar a segurança e entrar no prédio.'),
        ('O protagosnista deverá destruir as conditions colocadas no lugar pela segurança.'),
        ('O furão deverá implementar novos loops para usar os robos seguranças do local contra os aliens.'),
        ('Depois que distrair os aliens com os robos em loop, o furão deverá acessar o sistema interno do planeta alien e elaborar arrays para dar início à contagem regressiva de autodestruição do planeta.'),
        ('Na nave, enquanto  escapa, furão deve reconhecer as functions usadas para manter as memórias de seus amigos terráqueos.'),
        ('Uma vez  reconhecidas as functions, furão deve relacioná-las aos objects usados para manter as memórias dos seus amigos.'),
        ('Por fim furão deve idealizar uma forma de resgatar seus amigos do database alienígina antes que a contagem regressiva chegue ao zero e o planeta exploda.');

CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

INSERT INTO etapa(instrucao) VALUES
	(''),
    (''),
    (''),
    (''),
    (''),
    (''),
    (''),
    (''),
    (''),
    ('');


INSERT INTO etapa(ponto) VALUES
	(),
    (),
    ();

INSERT INTO etapa(tipo) VALUES
	('C'),
    ('H'),
    ('A');

CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);

describe Missao;

INSERT INTO Missao (titulo,forca) VALUES 
		('Encontrar Tags',1),
        ('Encontrar Selectores',2),
        ('Encontrar Scripts',3),
        ('Encontrar Exceptions',4),
        ('Encontrar Conditions',5),
        ('Encontrar Loops',6),
        ('Encontrar Arrays',7),
        ('Encontrar Functions',8),
        ('Encontrar Objects',9),
        ('Encontrar Databases',10);

SELECT * FROM Missao;

CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);
 
ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;
 
ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;