/*Liste os títulos das músicas e os nomes dos artistas que têm mais de 3 músicas em uma mesma playlist.*/

SELECT m.titulo, a.nome
FROM Musicas m
JOIN Musica_Artistas ma ON m.id = ma.musica_id
JOIN Artistas a ON ma.artista_id = a.id
JOIN Playlist_Musicas pm ON m.id = pm.musica_id
GROUP BY pm.playlist_id, a.nome, m.titulo
HAVING COUNT(m.id) > 3;
