--Desafio: inclusão de registros na tabela

INSERT INTO CLIENTES 
VALUES 
('1471156710', 'Érica Carvalho', 'R. Iriquitia', 'Jardins', 'São Paulo', 
	'SP', '80012212', '1990-09-01', 27, 'F', 170000, 24500,0), 
('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', 'Água Santa', 
	'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 18, 'M', 100000, 20000, 1), 
('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 
	'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 18, 'M', 120000, 22000, 0);


--Desafio: incluindo registros a partir de outra tabela

INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, 
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, GENERO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, 
VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM SUCOS_FRUTAS.dbo.TABELA_DE_CLIENTES
WHERE CPF <> '1471156710' AND CPF <> '19290992743' AND CPF <> '2600586709';