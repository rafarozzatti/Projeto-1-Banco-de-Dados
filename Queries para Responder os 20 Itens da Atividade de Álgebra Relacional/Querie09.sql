/*Liste todos os discos que contêm mais de 10 músicas.*/

SELECT d.titulo
FROM Discos d
JOIN Musicas m ON d.id = m.disco_id
GROUP BY d.id, d.titulo
HAVING COUNT(m.id) > 10;
