SELECT m.titulo
FROM Musicas m
JOIN Playlist_Musicas pm ON m.id = pm.musica_id
GROUP BY m.id, m.titulo
HAVING COUNT(pm.playlist_id) > 1;
