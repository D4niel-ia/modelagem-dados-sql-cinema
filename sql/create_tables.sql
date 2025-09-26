-- # Criar tabelas #
CREATE TABLE filmes (
    id_filme SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    duracao INT, -- em minutos
    classificacao VARCHAR(10)
);

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    tipo_cliente VARCHAR(20) CHECK (tipo_cliente IN ('Comum','VIP'))
);

CREATE TABLE salas (
    id_sala SERIAL PRIMARY KEY,
    numero INT UNIQUE NOT NULL,
    capacidade INT NOT NULL,
    tipo_sala VARCHAR(20) CHECK (tipo_sala IN ('2D','3D','IMAX'))
);

CREATE TABLE sessoes (
    id_sessao SERIAL PRIMARY KEY,
    id_filme INT REFERENCES filmes(id_filme),
    id_sala INT REFERENCES salas(id_sala),
    data DATE NOT NULL,
    horario TIME NOT NULL
);

CREATE TABLE ingressos (
    id_ingresso SERIAL PRIMARY KEY,
    id_sessao INT REFERENCES sessoes(id_sessao),
    id_cliente INT REFERENCES clientes(id_cliente),
    assento VARCHAR(10) NOT NULL,
    valor NUMERIC(10,2) NOT NULL
);
