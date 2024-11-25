CREATE DATABASE "dlei-servlet"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

INSERT INTO MODEL_LOGIN
(nome, email, login, senha, sexo, useradmin, usuario_id) VALUES('administrador', 'admin@test.com', 'admin', 'admin', 'MASCULINO', true, 1 );


CREATE TABLE model_login
(
    id integer NOT NULL DEFAULT nextval('model_login_id_seq'::regclass),
    nome character varying(200) NOT NULL,
    email character varying(150) NOT NULL,
    login character varying(50) NOT NULL,
    senha character varying(100) NOT NULL,
    useradmin boolean NOT NULL DEFAULT false,
    user_id bigint NOT NULL,
    perfil character varying(50),
    sexo character varying(20),
    fotouser text,
    extensaofotouser character varying(10),
    cep character varying(12),
    logradouro character varying(200),
    bairro character varying(150),
    localidade character varying(150),
    uf character varying(3),
    numero character varying(6),
    complemento character varying(100),
    datanascimento date,
    cpf character varying(14),
    telefone character varying(15),
    CONSTRAINT model_login_pkey PRIMARY KEY (id),
    CONSTRAINT model_login_login_key UNIQUE (login),
    CONSTRAINT usuario_fk FOREIGN KEY (user_id)
        REFERENCES model_login (id) 
)


CREATE TABLE orcamento
(
    id integer PRIMARY KEY NOT NULL,
    nome character varying(200) NOT NULL,
    email character varying(150) UNIQUE NOT NULL,    
    telefone character varying(15),
    orcamento text,
    CONSTRAINT model_login_pkey PRIMARY KEY (id),
    CONSTRAINT model_login_login_key UNIQUE (email)
)

CREATE TABLE produto
(
    idproduto integer PRIMARY KEY NOT NULL,
    categoria character varying(20) NOT NULL,
    produto character varying(200) UNIQUE NOT NULL,
    tipo character varying(20) UNIQUE NOT NULL,    
    vlcompra numeric(10,2),
    icms float,
    vlvenda numeric(10,2)
);

CREATE TABLE estoque
(
    idestoque integer PRIMARY KEY NOT NULL,
    idproduto integer NOT NULL,
	iduser bigint NOT NULL,
    quantidade integer NOT NULL,
    datamovimentacao date NOT NULL,
    tipomovimentacao character varying(10) NOT NULL, -- por exemplo, 'entrada' ou 'sa�da'
    FOREIGN KEY (idproduto) REFERENCES produto (idproduto)
	
	FOREIGN KEY (iduser) REFERENCES model_login (id)
	
	ou 
	ALTER TABLE estoque
    ADD CONSTRAINT estoque_fk FOREIGN KEY (iduser) REFERENCES model_login (id)
);