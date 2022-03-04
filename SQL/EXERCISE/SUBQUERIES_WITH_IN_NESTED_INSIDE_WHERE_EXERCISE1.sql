SELECT *
FROM dept_manager DM
WHERE DM.emp_no
IN (
	SELECT E.EMP_NO
    FROM employees E
    WHERE E.hire_date BETWEEN '1990-01-01' AND '1995-01-01'
);


SELECT

    *

FROM

    dept_manager

WHERE

    emp_no IN (SELECT

            emp_no

        FROM

            employees

        WHERE

            hire_date BETWEEN '1990-01-01' AND '1995-01-01');