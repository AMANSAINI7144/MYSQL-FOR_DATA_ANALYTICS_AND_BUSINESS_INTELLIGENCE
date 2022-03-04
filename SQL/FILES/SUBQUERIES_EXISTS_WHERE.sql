select e.first_name , e.last_name
from employees e
where 
	exists (
		select *
		from dept_manager m
		where m.emp_no = e.emp_no
	);
    
# add order by
select e.first_name , e.last_name
from employees e
where 
	exists (
		select *
		from dept_manager m
		where m.emp_no = e.emp_no
        order by emp_no
	);
    
    # more prefered way to write order by
select e.first_name , e.last_name
from employees e
where 
	exists (
		select *
		from dept_manager m
		where m.emp_no = e.emp_no
	)
    order by emp_no;
    