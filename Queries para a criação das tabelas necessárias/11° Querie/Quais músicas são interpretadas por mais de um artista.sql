SELECT m.titulo
FROM Musicas m
JOIN Musica_Artistas ma ON m.id = ma.musica_id
GROUP BY m.id, m.titulo
HAVING COUNT(ma.artista_id) > 1;
