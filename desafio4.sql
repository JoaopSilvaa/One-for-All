SELECT
    CASE
		WHEN YEAR(reprodution_date) = 2021 THEN 'Usuário ativo'
        WHEN YEAR(reprodution_date) <= 2021 THEN 'Usuário inativo'
        ELSE ''
        END AS 'condicao_usuario'
FROM SpotifyClone.Historic;

SELECT 
	us.name,
	hist.reprodution_date
FROM SpotifyClone.Historic hist
INNER JOIN SpotifyClone.Users us
ON hist.user_id = us.id
ORDER BY us.name, hist.reprodution_date DESC;
