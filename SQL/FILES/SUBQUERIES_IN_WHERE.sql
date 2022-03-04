select *
from dept_manager;

# SELECT THE FIRST_NAME AND LAST_NAME FROM THE EMPLOYEES TABLE FOR THE SAME "EMPLOYEE" NUMBER THAT CAN BE FOUND IN THE  "DEPARTMENT MANAGER TABLE"

select e.first_name , e.last_name
from employees e
where e.emp_no in (
	select m.emp_no
    from dept_manager m
);

select m.emp_no
    from dept_manager m;