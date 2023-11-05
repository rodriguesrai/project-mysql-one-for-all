SELECT 
    a.artista_nome AS artista,
    al.album_nome AS album
FROM 
    artistas a
JOIN
	albuns al ON a.artista_id = al.artista_id
WHERE 
    a.artista_nome = 'Elis Regina'
ORDER BY 
    al.album_nome ASC;