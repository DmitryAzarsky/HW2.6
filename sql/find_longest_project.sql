SELECT id
FROM project
ORDER BY (finish_date - start_date) DESC
LIMIT 1;