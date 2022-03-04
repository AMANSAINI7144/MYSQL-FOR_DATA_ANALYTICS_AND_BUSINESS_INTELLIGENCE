select m.dept_no,m.emp_no , d.dept_name 
from departments_dup d
RIGHT join dept_manager_dup m
on m.dept_no = d.dept_no
-- GROUP by dept_no
ORDER BY DEPT_NO
;