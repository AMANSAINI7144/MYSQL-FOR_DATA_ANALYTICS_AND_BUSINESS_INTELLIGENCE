SELECT COUNT(E.GENDER)
FROM EMPLOYEES E
WHERE E.GENDER = 'F';

SELECT COUNT(E.GENDER)
FROM EMPLOYEES E
WHERE E.GENDER = 'm';

SELECT e.gender , COUNT(E.GENDER)
FROM EMPLOYEES E
group by e.gender;

SELECT e.gender, COUNT(dm.emp_no)
FROM employees e
JOIN dept_manager dm 
ON e.emp_no = dm.emp_no
GROUP BY gender;