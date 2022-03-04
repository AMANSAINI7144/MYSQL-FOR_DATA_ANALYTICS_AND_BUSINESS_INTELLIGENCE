SELECT  e.emp_no , e.first_name , e.last_name , M.dept_no , e.hire_date
FROM employees e
INNER JOIN DEPT_MANAGER M
ON M.EMP_NO = E.EMP_NO
ORDER BY E.EMP_NO;

SELECT M.DEPT_NO , M.EMP_NO , D.DEPT_NAME
FROM DEPT_MANAGER_DUP M
INNER JOIN departments_dup D
ON M.DEPT_NO = D.DEPT_NO
ORDER BY M.DEPT_NO;