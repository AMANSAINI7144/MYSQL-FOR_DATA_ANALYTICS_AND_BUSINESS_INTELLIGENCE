# ASSIGN EMPLOYEE NUMBER 110022 AS A MANAGER TO ALL EMPLOYEES FROM 10001 TO 10020 , AND EMPLOYEE NUMBER 110039 TO A MANAGER TO ALL MANAGER TO ALL EMPLOYEES FROM 10021 TO 10040 .
select A.*
from (
	select 
		e.emp_no as employee_ID , 
		min(de.dept_no) as department_code ,
	(
		SELECT 
			emp_no
		from 
			dept_manager
		where
			emp_no = 110022
	) as manager_ID
	from 
		employees e
	join 
		dept_emp de
	on 
		e.emp_no = de.emp_no
	where 
		e.emp_no <=10020
	group by e.emp_no 
	order by e.emp_no
	) as A
UNION select B.*
from (
	select 
		e.emp_no as employee_ID , 
		min(de.dept_no) as department_code ,
	(
		SELECT 
			emp_no
		from 
			dept_manager
		where
			emp_no = 110039
	) as manager_ID
	from 
		employees e
	join 
		dept_emp de
	on 
		e.emp_no = de.emp_no
	where 
		e.emp_no >= 10021 and e.emp_no <=10040
	group by e.emp_no 
	order by e.emp_no
	) as B;