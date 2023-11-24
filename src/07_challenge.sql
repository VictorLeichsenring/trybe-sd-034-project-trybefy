UPDATE users SET 
  plan_id = 2
WHERE users.plan_id = 3;

DELETE from plans WHERE name = 'Trimestral';