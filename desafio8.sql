SELECT
	art.name AS 'artista',
    alb.name AS 'album'
FROM SpotifyClone.Artists art
INNER JOIN SpotifyClone.Albums alb
ON art.id = alb.artist_id
WHERE art.name = "Walter Phoenix"
ORDER BY alb.name;
    