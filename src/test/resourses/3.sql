#3. Вычислить общую ЗП всех Java разработчиков.

USE initdb;

SELECT
  skils.*,
  sum(developers.salary) AS total_amount
FROM developers
  INNER JOIN skils ON developers.id = skils.id
 INNER JOIN skils ON skils.id = skils.id
WHERE skils.skils_name LIKE 'java';