/*Liste todos os discos lançados por um artista específico em um determinado ano.*/

SELECT d.titulo
FROM Discos d
JOIN Artistas a ON d.artista_id = a.id
WHERE a.nome = 'Nome do Artista'
AND YEAR(d.data_lancamento) = 2023;
