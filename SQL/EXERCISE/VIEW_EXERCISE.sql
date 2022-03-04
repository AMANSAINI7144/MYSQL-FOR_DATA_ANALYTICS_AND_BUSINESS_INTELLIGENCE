CREATE OR REPLACE VIEW v_manager_avg_salary  AS
SELECT
	ROUND(AVG(salary), 2)
FROM
	salaries S
JOIN
	dept_manager m ON s.emp_no = m.emp_no;