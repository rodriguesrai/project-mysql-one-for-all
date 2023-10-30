SELECT
    cancao.cancao_nome AS cancao,
    COUNT(historico_reproducao.usuario_id) AS reproducoes
FROM historico_reproducao
JOIN cancao ON historico_reproducao.cancao_id = cancao.cancao_id
GROUP BY cancao.cancao_nome
ORDER BY reproducoes DESC, cancao.cancao_nome ASC
LIMIT 2;
