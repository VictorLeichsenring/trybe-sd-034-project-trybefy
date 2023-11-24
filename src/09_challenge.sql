SELECT
  p.name as 'Plano',
  COUNT(*) as 'Quantidade de usuários'
FROM users as u
INNER JOIN plans as p ON u.plan_id = p.id
GROUP BY p.name
ORDER BY p.name ASC;