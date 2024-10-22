/*Encontre os títulos das playlists que contêm a música com o título 'Imagine'.*/

SELECT p.titulo
FROM Playlists p
JOIN Playlist_Musicas pm ON p.id = pm.playlist_id
JOIN Musicas m ON m.id = pm.musica_id
WHERE m.titulo = 'Imagine';
