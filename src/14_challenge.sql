SELECT
  ar.name as 'Artista',
  GROUP_CONCAT(al.title) as 'Álbuns'
from artists as ar
INNER JOIN albums as al on al.artist_id = ar.id 
GROUP BY ar.name
ORDER BY ar.name;