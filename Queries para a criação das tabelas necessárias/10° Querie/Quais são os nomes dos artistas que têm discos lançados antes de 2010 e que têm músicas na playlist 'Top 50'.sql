SELECT DISTINCT a.nome
FROM Artistas a
JOIN Discos d ON a.id = d.artista_id
JOIN Musicas m ON d.id = m.disco_id
JOIN Playlist_Musicas pm ON m.id = pm.musica_id
JOIN Playlists p ON pm.playlist_id = p.id
WHERE d.data_lancamento < '2010-01-01' AND p.titulo = 'Top 50';
