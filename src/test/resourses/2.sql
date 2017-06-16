#2. Найти самый дорогой проект (исходя из ЗП разработчиков).

USE initdb;

SELECT
  projects.id,
  projects.name,
  sum(developers.salary) sum_salary
FROM developers
  JOIN projects ON projects.id = developers.id
GROUP BY projects.name
ORDER BY sum_salary DESC
LIMIT 1;