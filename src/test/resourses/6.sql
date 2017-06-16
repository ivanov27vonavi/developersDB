# 6. Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль.

USE initdb;

SELECT
  projects.*,
  avg(developers.salary)
FROM developers, projects
WHERE developers.id = projects.id
      AND projects.id IN (
  SELECT id
  FROM projects
  WHERE cost IN (
    SELECT min(projects.cost)
    FROM projects
  )
);