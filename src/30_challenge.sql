SELECT
  ar.name as 'Artista',
  COUNT(*) as 'Total de seguidores'
from artists as ar
INNER JOIN artists_followers as af on ar.id = af.artist_id
GROUP BY ar.name
HAVING COUNT(*) < 5
ORDER BY COUNT(af.user_id) DESC
LIMIT 1
