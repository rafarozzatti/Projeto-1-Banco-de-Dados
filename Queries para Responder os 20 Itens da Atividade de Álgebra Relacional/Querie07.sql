/*Qual é a duração média das músicas de um artista específico?*/

SELECT AVG(m.duracao) AS duracao_media
FROM Musicas m
JOIN Musica_Artistas ma ON m.id = ma.musica_id
JOIN Artistas a ON a.id = ma.artista_id
WHERE a.nome = 'Nome do Artista';
