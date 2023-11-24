SELECT
  ar.name as 'Artista',
  COUNT(*) as 'Quantidade de músicas reproduzidas'
FROM artists as ar
INNER JOIN albums as al on ar.id = al.artist_id
INNER JOIN songs as s on al.id = s.album_id
INNER JOIN history_play_songs as hps on s.id = hps.song_id
GROUP BY ar.name
HAVING COUNT(hps.id) > 10
ORDER BY ar.name ASC;