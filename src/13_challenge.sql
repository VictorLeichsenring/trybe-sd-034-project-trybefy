SELECT
  ar.name as 'Artista'
from artists as ar
INNER JOIN albums as al on al.artist_id = ar.id 
GROUP BY ar.name
HAVING COUNT(al.id) >= 3
ORDER BY ar.name ASC;