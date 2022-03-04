SELECT * 
from departments d
cross join dept_manager m
on d.dept_no = m.dept_no
cross join employees e
on e.emp_no = m.dept_no;

SELECT e.*, d.*
FROM employees e
CROSS JOIN departments d
WHERE e.emp_no < 10011
ORDER BY e.emp_no, d.dept_name;