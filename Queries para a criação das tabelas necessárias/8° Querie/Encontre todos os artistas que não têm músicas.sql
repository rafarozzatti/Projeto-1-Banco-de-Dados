SELECT a.nome
FROM Artistas a
LEFT JOIN Musica_Artistas ma ON a.id = ma.artista_id
WHERE ma.musica_id IS NULL;
