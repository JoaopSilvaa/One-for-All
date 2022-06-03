SELECT 
	name nome_musica,
    CASE
		WHEN name LIKE '%Streets' THEN REPLACE('Without My Streets', 'Streets', 'Code Review')
		WHEN name LIKE '%Her Own' THEN REPLACE('Dance With Her Own', 'Her Own', 'Trybe')
        WHEN name LIKE '%Inner Fire' THEN REPLACE('Troubles Of My Inner Fire', 'Inner Fire', 'Project')
        WHEN name LIKE '%Silly' THEN REPLACE("Let's Be Silly", 'Silly', 'Nice')
        WHEN name LIKE '%Circus' THEN REPLACE('Magic Circus', 'Circus', 'Pull Request')
    ELSE ''
    END AS novo_nome
FROM SpotifyClone.Musics
HAVING novo_nome <> ''
ORDER BY novo_nome;
    