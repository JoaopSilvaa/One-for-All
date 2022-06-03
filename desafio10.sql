SELECT DISTINCT
	m.name nome,
    COUNT(his.music_id) reproducoes
FROM SpotifyClone.Users us
INNER JOIN SpotifyClone.Bundles b
ON us.bundle_id = b.id
INNER JOIN SpotifyClone.Historic his
ON us.id = his.user_id
INNER JOIN SpotifyClone.Musics m
ON m.id = his.music_id
WHERE
	b.description = 'gratuito'
    OR
    b.description = 'pessoal'
GROUP BY m.name
ORDER BY m.name;

