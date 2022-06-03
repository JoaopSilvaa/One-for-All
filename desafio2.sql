SELECT 
	COUNT(m.id) AS 'cancoes',
    COUNT(art.id) AS 'artistas',
    COUNT(alb.id) AS 'albuns'
FROM SpotifyClone.Musics m
LEFT JOIN SpotifyClone.Artists art
ON m.id = art.id
LEFT JOIN SpotifyClone.Albums alb
ON m.id = alb.id;