SELECT
    u.usuario_nome AS pessoa_usuaria,
    CASE
        WHEN hr.data_reproducao >= '2021-01-01' THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM
    usuario AS u
JOIN (
    SELECT
        usuario_id,
        MAX(data_reproducao) AS data_reproducao
    FROM
        historico_reproducao
    GROUP BY
        usuario_id
) AS hr ON u.usuario_id = hr.usuario_id
ORDER BY
    u.usuario_nome;
