SELECT 
	COUNT(*) as musicas_no_historico
FROM
	historico_reproducao hr
JOIN
	usuario u ON hr.usuario_id = u.usuario_id
WHERE
	u.usuario_nome = 'Barbara Liskov';