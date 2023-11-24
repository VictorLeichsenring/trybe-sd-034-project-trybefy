SELECT
  al.title as 'Album',
  al.release_year as 'Ano de lançamento',
  ar.name as 'Artista'
from albums as al
INNER JOIN artists as ar on al.artist_id = ar.id
WHERE al.title LIKE '%you%'
ORDER BY al.release_year asc;