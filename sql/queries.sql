-- # Consultas útiles #

-- Receita total por filme
SELECT f.titulo, SUM(i.valor) AS receita_total
FROM ingressos i
JOIN sessoes s ON i.id_sessao = s.id_sessao
JOIN filmes f ON s.id_filme = f.id_filme
GROUP BY f.titulo;

-- Total de ingressos vendidos por sala
SELECT sa.numero, COUNT(i.id_ingresso) AS total_ingressos
FROM ingressos i
JOIN sessoes s ON i.id_sessao = s.id_sessao
JOIN salas sa ON s.id_sala = sa.id_sala
GROUP BY sa.numero;

-- Clientes que mais compraram ingressos
SELECT c.nome, COUNT(i.id_ingresso) AS total_compras
FROM ingressos i
JOIN clientes c ON i.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_compras DESC;
