select
  full_name as 'Nome completo',
  email as 'E-mail'
from users
WHERE users.active = true;