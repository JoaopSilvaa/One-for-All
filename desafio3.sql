SELECT 
	us.name AS 'usuario',
	COUNT(hist.user_id) AS 'qtde_musicas_ouvidas',
    ROUND((SUM(m.duration_sec)/60),2) AS 'total_minutos'
FROM SpotifyClone.Users us
INNER JOIN SpotifyClone.Historic hist
ON us.id = hist.user_id
INNER JOIN SpotifyClone.Musics m
ON m.id = hist.music_id
GROUP BY us.name
ORDER BY us.name;
