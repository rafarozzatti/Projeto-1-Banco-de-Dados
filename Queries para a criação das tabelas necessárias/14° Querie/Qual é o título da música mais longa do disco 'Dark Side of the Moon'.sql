SELECT m.titulo
FROM Musicas m
JOIN Discos d ON m.disco_id = d.id
WHERE d.titulo = 'Dark Side of the Moon'
ORDER BY m.duracao DESC
LIMIT 1;
