SELECT
	MIN(b.value) faturamento_minimo,
    MAX(b.value) faturamento_maximo,
    ROUND(AVG(b.value),2) faturamento_medio,
    SUM(b.value) faturamento_total
FROM SpotifyClone.Users us
INNER JOIN SpotifyClone.Bundles b
ON us.bundle_id = b.id;
    