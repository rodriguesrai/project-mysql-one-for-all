SELECT
    (SELECT COUNT(*) FROM cancao) as cancoes,
    (SELECT COUNT(*) FROM artistas) as artistas,
    (SELECT COUNT(*) FROM albuns) as albuns;
