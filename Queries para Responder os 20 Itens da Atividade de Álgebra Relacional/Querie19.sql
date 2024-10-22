/*Quais são os discos que contêm músicas de artistas que têm pelo menos 2 discos lançados?*/

SELECT DISTINCT d.titulo
FROM Discos d
JOIN Musicas m ON d.id = m.disco_id
JOIN Musica_Artistas ma ON m.id = ma.musica_id
JOIN Artistas a ON ma.artista_id = a.id
WHERE (SELECT COUNT(*) FROM Discos WHERE artista_id = a.id) >= 2;
