SELECT m.titulo
FROM Musicas m
LEFT JOIN Playlist_Musicas pm ON m.id = pm.musica_id
WHERE pm.playlist_id IS NULL;
