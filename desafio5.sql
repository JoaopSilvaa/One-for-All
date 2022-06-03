SELECT 
	m.name AS 'cancao',
    COUNT(hist.music_id) AS reproducoes
FROM SpotifyClone.Musics m
INNER JOIN SpotifyClone.Historic hist
ON m.id = hist.music_id
GROUP BY m.name
ORDER BY reproducoes DESC, m.name
LIMIT 2;

    