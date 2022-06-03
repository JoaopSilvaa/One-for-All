SELECT
	art.name AS artista,
    alb.name AS album,
	COUNT(usflart.user_id) AS seguidores
FROM SpotifyClone.Artists art
INNER JOIN SpotifyClone.Albums alb
ON art.id = alb.artist_id
INNER JOIN SpotifyClone.User_follow_artists usflart
ON art.id = usflart.artist_id
GROUP BY seguidores
ORDER BY seguidores DESC, artista, album;

SELECT 
	art.name,
    COUNT(usflart.user_id) seguidores
FROM SpotifyClone.Artists art
INNER JOIN SpotifyClone.User_follow_artists usflart
ON art.id = usflart.artist_id
GROUP BY art.name
ORDER BY seguidores DESC;