# Method 1
select dm.* , d.*
from dept_manager dm
cross join departments d
order by dm.emp_no , d.dept_no;

# Method 2
select dm.* , d.*
from 
	dept_manager dm ,
	departments d
order by dm.emp_no , d.dept_no;

# Method 3
select dm.* , d.*
from dept_manager dm
join departments d
order by dm.emp_no , d.dept_no;

select dm.* , d.*
from 
	dept_manager dm , 
	departments d
where d.dept_no <> dm.dept_no 
order by dm.emp_no , d.dept_no;


select *
from 
	dept_manager dm , 
	departments d
where d.dept_no <> dm.dept_no 
order by dm.emp_no , d.dept_no;

select e.*,d.*
from departments d
cross join dept_manager dm
join employees e
on dm.emp_no = e.emp_no;