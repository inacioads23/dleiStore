CREATE DATABASE "dlei-servlet"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;	

CREATE TABLE model_login
(   id serial NOT NULL,
    nome character varying(200) NOT NULL,
    email character varying(150) NOT NULL,
    login character varying(50) NOT NULL,
    senha character varying(100) NOT NULL,
    sexo character varying(20) NOT NULL,
    useradmin boolean NOT NULL DEFAULT false,
    user_id bigint NOT NULL,
    perfil character varying(50) NOT NULL,
    fotouser text,
    extensaofotouser character varying(10),
    CONSTRAINT model_login_pkey PRIMARY KEY (id),
    CONSTRAINT model_login_login_key UNIQUE (login),
    CONSTRAINT usuario_fk FOREIGN KEY (usuario_id)
        REFERENCES model_login (id)
);

INSERT INTO MODEL_LOGIN
(nome, email, login, senha, sexo, useradmin, usuario_id) VALUES('administrador', 'admin@test.com', 'admin', 'admin', 'MASCULINO', true, 1 );


CREATE TABLE model_login
(   id serial primary key,
 	nome varchar(200) NOT NULL,
	email varchar(150) NOT NULL,	
	login varchar(50) UNIQUE NOT NULL,	
    senha varchar(100) NOT NULL,
    userAdmin boolean NOT NULL DEFAULT false,
);



CREATE TABLE usuario
(   id serial primary key,
    nome varchar(255) NOT NULL,    
    cpf varchar(30) NOT NULL,
    dataNascimento date NOT NULL,
    email varchar(50) NOT NULL,
    login varchar(50) UNIQUE NOT NULL,   
    senha varchar(50) NOT NULL,
    userAdmin boolean NOT NULL DEFAULT false,
    usuario_id bigint NOT NULL DEFAULT 1,
    telefone varchar(15) NOT NULL,
    endereco varchar(255) NOT NULL,
    numEndereco varchar(5) NOT NULL,
    complEndereco varchar(50),
    bairro varchar(50) NOT NULL,
    cidade varchar(100) NOT NULL,
    estado varchar(50) NOT NULL,
    uf varchar(3) NOT NULL,
    cep varchar(10) NOT NULL
);