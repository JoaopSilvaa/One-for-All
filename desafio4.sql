SELECT 
	us.name usuario,
	IF(YEAR(MAX(hist.reprodution_date)) >= 2021, 'Usuário ativo', 'Usuário inativo')  condicao_usuario
FROM SpotifyClone.Users us
INNER JOIN SpotifyClone.Historic hist
ON us.id = hist.user_id
GROUP BY hist.user_id
ORDER BY us.name;
