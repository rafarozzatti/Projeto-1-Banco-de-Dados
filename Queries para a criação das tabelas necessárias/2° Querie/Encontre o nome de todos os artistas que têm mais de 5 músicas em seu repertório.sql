SELECT a.nome
FROM Artistas a
JOIN Musica_Artistas ma ON a.id = ma.artista_id
GROUP BY a.id, a.nome
HAVING COUNT(ma.musica_id) > 5;
