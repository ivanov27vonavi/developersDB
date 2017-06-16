#1. Добавить разаработчикам поле (salary - зарплата).

--USE initdb;

-- add field salary to developers tab
--alter table developers add salary int not null after name

-- update data into field salary of developers tab
--UPDATE developers SET salary = 2800 WHERE id = 1;
--UPDATE developers SET salary = 3000 WHERE id = 2;
--UPDATE developers SET salary = 1500 WHERE id = 3;
--UPDATE developers SET salary = 2500 WHERE id = 4;
--UPDATE developers SET salary = 3200 WHERE id = 5;