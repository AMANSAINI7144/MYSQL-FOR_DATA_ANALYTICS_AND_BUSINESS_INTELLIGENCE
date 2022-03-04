USE EMPLOYEES;
# HOW MANY PEOPLE HAVE BEEN HIRED AFTER THE 1ST OF JANUARY 2007
SELECT *
FROM employees
WHERE HIRE_DATE > '2000-01-01';

-- drop index if exists i_hire_date;
CREATE INDEX i_hire_date on employees(hire_date);

select *
from employees
where first_name='Georgi' and last_name='Facello';

create index i_composite on employees(first_name,last_name);

show index from employees from employees;

show index from employees;