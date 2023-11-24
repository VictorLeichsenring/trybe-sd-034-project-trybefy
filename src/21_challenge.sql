SELECT
  al.title as 'Álbum',
  SUM(s.duration_in_seconds) as 'Duração'
from albums as al
INNER JOIN songs as s ON al.id = s.album_id
GROUP BY al.title
ORDER BY SUM(s.duration_in_seconds) DESC;