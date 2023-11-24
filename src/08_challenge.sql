select
  u.full_name as 'Nome completo',
  u.email as 'E-mail',
  p.name as 'Plano'
from users as u
INNER JOIN plans as p ON u.plan_id = p.id
ORDER BY u.full_name ASC;