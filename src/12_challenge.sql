SELECT
 ar.name as 'Artista',
 count(*) as 'Quantidade de álbuns'
from albums as al
INNER JOIN artists as ar on al.artist_id = ar.id
GROUP BY ar.name
ORDER BY COUNT(*) DESC, ar.name ASC;