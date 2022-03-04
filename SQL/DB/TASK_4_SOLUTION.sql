# create an sql stored procedure that will allow you to obtain the aberage male and female salary per department within a certain salary range .
# let this range be difined by two valules the usercan insert when calling the procedure . finally , visualize the obtained result-set in tableau
# as a double bar chart .


drop procedure if exists filter_salary;

delimiter $$
create procedure filter_salary (in p_min_salary float , in p_max_salary float)
begin
	select 
		e.gender,
        d.dept_name,
        avg(s.salary) as avg_salary
	from 
		t_salaries s
			join 
			t_employees e
				on
					s.emp_no = e.emp_no
			join
				t_dept_emp de
                on
					de.emp_no = e.emp_no
			join
				t_departments d
                on
					d.dept_no = de.dept_no
			where 
				s.salary between p_min_salary and p_max_salary
		group by
			d.dept_no , e.gender;
end $$

delimiter ;

call filter_salary(50000,90000);
