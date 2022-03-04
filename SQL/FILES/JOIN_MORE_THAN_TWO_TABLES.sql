SELECT E.emp_no , e.first_name , e.last_name , e.hire_date , dm.from_date , d.dept_name
from employees e
cross join dept_manager_dup dm
	on e.emp_no = dm.emp_no 
join departments_dup d
	on dm.dept_no = d.dept_no;
    
    
SELECT d.dept_name, dm.from_date , E.emp_no , e.first_name , e.last_name , e.hire_date  
from departments d 
join dept_manager_dup dm
on d.dept_no = dm.dept_no
join employees e
on dm.emp_no = e.emp_no;
