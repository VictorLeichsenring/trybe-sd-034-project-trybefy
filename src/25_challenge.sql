SELECT
  al.title as 'Álbum',
  COUNT(*) AS 'Quantidade de músicas reproduzidas'
from albums as al
INNER JOIN songs as s on al.id = s.album_id
INNER JOIN history_play_songs as hps on s.id = hps.song_id
GROUP BY al.title
ORDER BY COUNT(hps.id) DESC, al.title asc
LIMIT 5