SELECT
  s.title as 'Título'
from songs as s
INNER JOIN albums as al ON s.album_id = al.id
WHERE al.title = 'Thriller'
ORDER BY s.title ASC;