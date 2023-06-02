--Desafio: cria��o da tabela de clientes

USE [VENDAS SUCOS];

CREATE TABLE CLIENTES
(
CPF VARCHAR(11) NOT NULL PRIMARY KEY,
NOME VARCHAR(100) NULL,
ENDERECO VARCHAR(100) NULL,
BAIRRO VARCHAR(50) NULL,
CIDADE VARCHAR(50) NULL,
ESTADO VARCHAR(50) NULL,
CEP VARCHAR(8) NULL,
DATA_NASCIMENTO DATE NULL,
IDADE INTEGER NULL,
GENERO VARCHAR(1) NULL,
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT
);


--Desafio: criando a tabela de itens de notas fiscais

USE [VENDAS SUCOS];

CREATE TABLE TABELA_DE_ITENS_VENDIDOS
(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE INT NULL,
PRECO FLOAT NULL,
PRIMARY KEY (NUMERO, CODIGO)
);

ALTER TABLE TABELA_DE_ITENS_VENDIDOS
ADD CONSTRAINT FK_NUMERO
FOREIGN KEY (NUMERO) REFERENCES TABELA_DE_VENDAS (NUMERO);

ALTER TABLE TABELA_DE_ITENS_VENDIDOS
ADD CONSTRAINT FK_PRODUTOS
FOREIGN KEY (CODIGO) REFERENCES PRODUTOS (CODIGO);