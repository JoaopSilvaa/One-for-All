SELECT 
	art.name artista,
    alb.name album,
    COUNT(usflart.user_id) seguidores
FROM SpotifyClone.Artists art
INNER JOIN SpotifyClone.User_follow_artists usflart
ON art.id = usflart.artist_id
LEFT JOIN SpotifyClone.Albums alb
ON art.id = alb.artist_id
GROUP BY art.name, alb.name
ORDER BY seguidores DESC, art.name, alb.name;
