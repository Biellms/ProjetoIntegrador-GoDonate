
CREATE DATABASE db_gestordonativo;
USE db_gestordonativo;

CREATE TABLE Usuario (
	id bigint NOT NULL AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	senha varchar(255) NOT NULL,
	dataNascimento DATE NOT NULL,
	CONSTRAINT Usuario_pk PRIMARY KEY (id)
);

CREATE TABLE InfoPagamento (
	id bigint NOT NULL AUTO_INCREMENT,
	nomeTitular varchar(255) NOT NULL,
	cpfTitular varchar(255) NOT NULL,
	numeroCartao varchar(255) NOT NULL,
	Vencimento DATE NOT NULL,
	codSeguranca int NOT NULL,
    valorDoacao decimal(8,2) NOT NULL,
	usuario_id bigint NOT NULL,
	CONSTRAINT info_pk PRIMARY KEY (id)
);

CREATE TABLE Postagem (
	id bigint NOT NULL AUTO_INCREMENT,
	titulo varchar(255) NOT NULL,
	descricao varchar(255) NOT NULL,
	valorMeta varchar(255) NOT NULL,
	usuario_id bigint NOT NULL,
	CONSTRAINT Postagem_pk PRIMARY KEY (id)
);

ALTER TABLE InfoPagamento ADD CONSTRAINT InfoPagamento_fk0 FOREIGN KEY (usuario_id) REFERENCES Usuario(id);
ALTER TABLE Postagem ADD CONSTRAINT Postagem_fk0 FOREIGN KEY (usuario_id) REFERENCES Usuario(id);




