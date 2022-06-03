SELECT
	m.name nome,
    COUNT(his.music_id) reproducoes
FROM SpotifyClone.Musics m
INNER JOIN SpotifyClone.Historic his
ON m.id = his.music_id
GROUP BY m.name
ORDER BY m.name;

SELECT DISTINCT
	us.name,
    b.description
FROM SpotifyClone.Users us
INNER JOIN SpotifyClone.Bundles b
ON us.bundle_id = b.id
WHERE
	b.description = 'gratuito'
    OR
    b.description = 'pessoal';

