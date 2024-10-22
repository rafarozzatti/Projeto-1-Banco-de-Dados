/*Quais são os nomes dos artistas que têm músicas em playlists criadas por um usuário específico?*/

SELECT DISTINCT a.nome
FROM Artistas a
JOIN Musica_Artistas ma ON a.id = ma.artista_id
JOIN Musicas m ON ma.musica_id = m.id
JOIN Playlist_Musicas pm ON m.id = pm.musica_id
JOIN Playlists p ON pm.playlist_id = p.id
JOIN Usuarios u ON p.usuario_id = u.id
WHERE u.nome = 'Nome do Usuário';
