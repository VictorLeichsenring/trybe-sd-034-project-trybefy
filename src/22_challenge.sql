SELECT
  ar.name as 'Artista',
  COUNT(s.id) as 'Quantidade de músicas'
from artists as ar
INNER JOIN albums as al on ar.id = al.artist_id
INNER JOIN songs as s on al.id = s.album_id
GROUP BY ar.name
ORDER BY COUNT(s.id) DESC, ar.name ASC
LIMIT 3