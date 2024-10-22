/*Encontre o nome de todos os artistas que têm mais de 5 músicas em seu repertório.*/

SELECT a.nome
FROM Artistas a
JOIN Musica_Artistas ma ON a.id = ma.artista_id
GROUP BY a.id, a.nome
HAVING COUNT(ma.musica_id) > 5;
