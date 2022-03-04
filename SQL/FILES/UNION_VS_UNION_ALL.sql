-- create employees_dup
DROP TABLE IF EXISTS  EMPLOYEES_DUP;
CREATE TABLE EMPLOYEES_DUP
(
	EMP_NO INT(11),
    BIRTH_DATE DATE,
    FIRST_NAME VARCHAR(14),
    LAST_NAME VARCHAR(16),
    GENDER ENUM('M','F'),
    HIRE_DATE DATE
);


INSERT INTO EMPLOYEES_DUP
SELECT E.*
FROM employees e
LIMIT 20;


SELECT *
FROM EMPLOYEES_DUP;

-- INSERT A DUPLICATE OF THE FIRST ROW
INSERT INTO EMPLOYEES_DUP 
VALUES (
	'10001','1953-09-02','Georgi','Facello','M','1986-06-26'
);

SELECT *
FROM EMPLOYEES_DUP
order by emp_no;


-- UNION AND UNION ALL
select 
	e.emp_no,
	e.first_name, 
    e.last_name,
	null as dept_no,
    null as from_date
from 
	employees_dup e
where 
	e.emp_no = 10001
union  select 
	null as emp_no,
    null as first_name,
    null as last_name,
    m.dept_no,
    m.from_date
from
	dept_manager m;