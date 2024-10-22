SELECT m.titulo, a.nome
FROM Musicas m
JOIN Musica_Artistas ma ON m.id = ma.musica_id
JOIN Artistas a ON a.id = ma.artista_id
ORDER BY m.titulo;
