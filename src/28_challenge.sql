SELECT
  u.full_name as 'Pessoa usuária',
  COUNT(*) as 'Artistas que segue'
from users as u
INNER JOIN artists_followers as af on u.id = af.user_id
GROUP BY u.full_name
ORDER BY u.full_name ASC;