SELECT
  s.title as 'Título',
  s.duration_in_seconds as 'Duração',
  al.title as 'Álbum'
from songs as s
INNER JOIN albums as al on s.album_id = al.id
WHERE s.duration_in_seconds BETWEEN 300 and 480
ORDER BY s.duration_in_seconds ASC;