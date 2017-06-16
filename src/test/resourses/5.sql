#5. Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний .


USE initdb;

--CREATE TEMPORARY TABLE tmp
    SELECT
      companies.name_company,
      customers.id,
      sum(projects.cost) summ
    FROM companies

      JOIN projects ON projects.company_id = companies.id
      JOIN customers ON customers.id = projects.customer_id
    GROUP BY companies.name_company, customers.customer_name;
SELECT * FROM tmp;

--SELECT
  tmp.name,
  customers.*,
  min(tmp.summ)
FROM tmp, customers, companies
WHERE tmp.name = companies.name_company AND customers.id = tmp.id
GROUP BY companies.name_company