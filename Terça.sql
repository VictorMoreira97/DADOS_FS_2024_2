# 1. Criar um Banco de Dados

CREATE DATABASE escola;
USE escola


# 2. Criar entre 3 e 5 entidades
# 3. Criar no mínimo 3 atributos em cada entidade
CREATE TABLE aluno (
matricula VARCHAR(30) PRIMARY KEY,
nome VARCHAR(64),
data_nascimento DATE
);

CREATE TABLE turma (
id_turma INT PRIMARY KEY,
nome_turma VARCHAR(1),
turno VARCHAR(1)
);

CREATE TABLE professor (
id_prof INT PRIMARY KEY,
nome_prof VARCHAR(64),
data_nacimento_prpf DATE
);

CREATE TABLE disciplina (
id_disciplina INT,
nome_disciplina VARCHAR (64),
turno VARCHAR(1)
);

# 4. Fazer 5 INSERT em cada entidade
INSERT INTO aluno VALUES 
("1", "Yukimi", "1990-03-17"),
("2", "Éden", "1990-17-07"),
("3", "Eric", "1990-08-15"),
("4", "Thiago", "1990-02-23"),
("5", "Rafaa", "1990-08-12"),
("6", "Dennis", "1990-04-09"),
("7", "Roger", "1990-04-22"),
("8", "Saulo", "1990-13-03"),
("9", "Felipe", "1990-10-07"),
("10", "Skipp", "1990-02-01"),
("11", "Chris", "1990-05-09"),
("12", "Laila", "1990-10-27"),
("13", "Victor", "1997-05-03"),
("14", "Paulo", ""),
("15", "Lala", ""),
("16", "Robinson", "1990-08-28")

INSERT INTO turma VALUES 
(1, "a", "m"),
(2, "b", "m"),
(3, "c", "t"),
(4, "d", "n");
(5, "e", "n");


INSERT INTO professor VALUES 
(1, "Takanaka", "1990-01-01"),
(2, "Amorim", "1990-01-01"),
(3, "Nascimento", "1990-01-01"),
(4, "Guilhermo", "1990-01-01"),
(5, "Pereira", "1990-01-01");

INSERT INTO disciplina VALUES
(1, "Português", "m"),
(2, "Matemática", "m"),
(3, "Biologia", "t"),
(4, "Química", "t"),
(5, "Física", "n");

# -------------------------------------------
# Realizar um SELECT 
SELECT * FROM aluno;

#Realizar SELECT com uma função de agragação
SELECT * FROM `aluno` ORDER by nome

ALTER TABLE aluno DROP COLUMN data_nascimento;

#Atualizar um dado qualquer (UPDATE)
UPDATE aluno SET nome = "Owlen" WHERE matricula = "13"