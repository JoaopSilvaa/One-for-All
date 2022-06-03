SELECT 
	COUNT(music_id) 'quantidade_musicas_no_historico'
FROM SpotifyClone.Historic his
INNER JOIN SpotifyClone.Users us
ON his.user_id = us.id
WHERE us.name = 'Bill';