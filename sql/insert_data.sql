-- # Inserir dados fictícios nas tabelas #

-- Filmes
INSERT INTO filmes (titulo, genero, duracao, classificacao) VALUES
('Oppenheimer', 'Drama', 180, '16'),
('Barbie', 'Comédia', 120, '12'),
('Vingadores: Ultimato', 'Ação', 180, '12');

-- Clientes
INSERT INTO clientes (nome, email, telefone, tipo_cliente) VALUES
('Ana Souza', 'ana@email.com', '11999999999', 'Comum'),
('Carlos Lima', 'carlos@email.com', '21988887777', 'VIP');

-- Salas
INSERT INTO salas (numero, capacidade, tipo_sala) VALUES
(1, 100, '2D'),
(2, 200, 'IMAX');

-- Sessões
INSERT INTO sessoes (id_filme, id_sala, data, horario) VALUES
(1, 1, '2025-09-30', '19:00'),
(2, 2, '2025-09-30', '21:30');

-- Ingressos
INSERT INTO ingressos (id_sessao, id_cliente, assento, valor) VALUES
(1, 1, 'A10', 25.00),
(2, 2, 'B15', 40.00);
