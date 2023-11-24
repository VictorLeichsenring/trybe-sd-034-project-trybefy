SELECT
  u.full_name as 'Nome',
  COUNT(*) as 'Quantidade de músicas reproduzidas'
from users as u
INNER JOIN history_play_songs as hps on u.id = hps.user_id
GROUP BY u.full_name
ORDER BY COUNT(hps.id) DESC, u.full_name ASC;