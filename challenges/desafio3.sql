SELECT 
    u.usuario_nome AS pessoa_usuaria,
    COUNT(historico_reproducao.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(cancao.duracao_segundos) / 60, 2) AS total_minutos
FROM historico_reproducao
JOIN usuario AS u ON u.usuario_id = historico_reproducao.usuario_id
JOIN cancao ON historico_reproducao.cancao_id = cancao.cancao_id
GROUP BY u.usuario_nome
ORDER BY u.usuario_nome;
