SELECT u.nome
FROM Usuarios u
JOIN Playlists p ON u.id = p.usuario_id
JOIN Playlist_Musicas pm ON p.id = pm.playlist_id
JOIN Musicas m ON pm.musica_id = m.id
WHERE m.titulo = 'Bohemian Rhapsody';
