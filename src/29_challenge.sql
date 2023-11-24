SELECT
  ar.name as 'Artista'
from artists as ar
INNER JOIN artists_followers as af on ar.id = af.artist_id
GROUP BY ar.name
ORDER BY COUNT(af.user_id) DESC
LIMIT 1
