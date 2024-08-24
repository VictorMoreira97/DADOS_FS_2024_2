CREATE DATABASE clinicaVet
USE clinicaVet;

CREATE TABLE animal (
    id_do_Animal INTEGER NOT NULL PRIMARY KEY,
    raca VARCHAR(255) NOT NULL
);


CREATE TABLE proprietario (
    id_do_Proprietario INTEGER NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL
);

CREATE TABLE compra (
    id_da_Compra INTEGER NOT NULL PRIMARY KEY,
    data_da_Compra DATE NOT NULL,
    forma_de_Pagamento VARCHAR(255) NOT NULL,
    codigo_do_Pagmento INTEGER NOT NULL
);

CREATE TABLE produto_Servico (
    id_do_Produto_Servico INTEGER NOT NULL PRIMARY KEY ,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor FLOAT NOT NULL
);

CREATE TABLE consulta (
    id_da_Consulta INTEGER NOT NULL PRIMARY KEY ,
    procedimento VARCHAR(255) NOT NULL    
);

CREATE TABLE veterinario (
    id_do_Veterinario INTEGER NOT NULL PRIMARY KEY ,
    nome VARCHAR(255) NOT NULL,
    salario FLOAT NOT NULL
);


ALTER TABLE animal
ADD CONSTRAINT fk_proprietario
FOREIGN KEY (id_do_proprietario) REFERENCES proprietario(id_do_Proprietario);

ALTER TABLE consulta 
ADD COLUMN id_do_Veterinario INTEGER NOT NULL;

ALTER TABLE consulta
ADD CONSTRAINT fk_proprietario
FOREIGN KEY (id_do_Veterinario) REFERENCES veterinario(id_do_Veterinario);
    
ALTER TABLE consulta
ADD COLUMN id_do_Animal INTEGER NOT NULL (FOREIGN KEY);

ALTER TABLE consulta
ADD CONSTRAINT fk_animal
FOREIGN KEY (id_do_animal) REFERENCES animal(id_do_Animal);

ALTER TABLE animal
ADD COLUMN nome VARCHAR(255) NOT NULL;

INSERT INTO proprietario VALUES 
(1, 'Victor', '1'),
(2, 'Laila', '2'),
(3, 'Roger', '3'),
(4, 'Éden', '4'),
(5, 'Skipp', '5');

INSERT INTO animal VALUES
(1, 'São Bernado', 1, 'Bucky'),
(2, 'Fiapo de Manga', 1, 'Cora'),
(3, 'Labrador', 3, 'Arya'),
(4, 'Mel', 4, 'Rabito'),
(5, 'Gandalf', 5, 'Gato'),
(6, 'Ziggy', 5, 'Ovelha'),
(7, 'S. R. D.', 5, 'S.R.F.');

INSERT INTO produto_servico VALUES
(1, 'Bolinha de borracha', 'Brinquedo', 5.0),
(2, 'Ossinho de Plástico', 'Brinquedo', 6.5),
(3, 'Novelo de Lã', 'Brinquedo', 3.50),
(4, 'Banho', 'Serviço', 50.0),
(5, 'Tosa', 'Serviço', 50.0),
(6, 'Banho e Tosa', 'Serviço', 80.0),
(7, 'Ração Canina', 'Ração', 45),
(8, 'Ração Felina', 'Ração', 35);

ALTER TABLE compra DROP codigo_do_Pagmento;

ALTER TABLE compra
ADD COLUMN id_do_Produto INT NOT NULL,
ADD CONSTRAINT fk_produto
FOREIGN KEY (id_do_Produto) REFERENCES produto_servico(id_do_Produto_Servico);

INSERT INTO compra VALUES
(1, '2024-01-01', 'Crédito', 1),
(2, '2024-02-02', 'Dinheiro', 2),
(3, '2024-03-03', 'Débito', 3),
(4, '2024-04-04', 'PIX', 4);

INSERT INTO veterinario VALUES
(1, 'Yukimi', 5000.00),
(2, 'Laila', 4500.00),
(3, 'Roger', 4500.00),
(4, 'Chris', 5500.00);

INSERT INTO consulta VALUES
(1, 'Parto', 1),
(2, 'Cirugia', 2),
(3, 'Cirurgia', 2),
(4, 'Auscutação', 3),
(5, 'Parto', 1);

SELECT * FROM animal;
SELECT * FROM compra;
SELECT * FROM consulta;
SELECT * FROM produto_servico;
SELECT * FROM veterinario;