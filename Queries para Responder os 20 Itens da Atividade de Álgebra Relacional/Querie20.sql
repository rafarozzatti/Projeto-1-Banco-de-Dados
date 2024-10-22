/*Liste todos os usuários e suas playlists, mas apenas para playlists que contêm pelo menos 5 músicas.*/

SELECT u.nome AS usuario, p.titulo AS playlist
FROM Usuarios u
JOIN Playlists p ON u.id = p.usuario_id
JOIN Playlist_Musicas pm ON p.id = pm.playlist_id
GROUP BY p.id, u.nome, p.titulo
HAVING COUNT(pm.musica_id) >= 5;
