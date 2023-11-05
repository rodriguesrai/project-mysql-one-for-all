SELECT 
    a.artista_nome AS artista,
    al.album_nome AS album,
    COUNT(us.usuario_id) AS pessoas_seguidoras
FROM 
    artistas a
JOIN 
    albuns al ON a.artista_id = al.artista_id
LEFT JOIN 
    usuario_seguindo us ON a.artista_id = us.artista_id
GROUP BY 
    a.artista_id, al.album_nome
ORDER BY 
    pessoas_seguidoras DESC, a.artista_nome ASC, al.album_nome ASC;
