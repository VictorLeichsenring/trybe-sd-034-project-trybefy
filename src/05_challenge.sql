SELECT
  full_name AS 'Nome completo',
  birthday AS 'Data de nascimento'
FROM users
WHERE users.active = 1 AND YEAR(users.birthday) >= 1990;
