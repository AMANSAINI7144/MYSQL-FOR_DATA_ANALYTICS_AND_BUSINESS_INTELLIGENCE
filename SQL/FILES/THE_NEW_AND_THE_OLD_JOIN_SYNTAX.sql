# join 
select m.dept_no,m.emp_no , d.dept_name 
from dept_manager_dup m
inner join departments_dup d
on m.dept_no = d.dept_no
group by m.emp_no
order by m.dept_no;

-- where 
# LEFT JOIN REVERSING ORDER OF THE TABLE
select m.dept_no,m.emp_no , d.dept_name 
from 
	dept_manager_dup m,
	departments_dup d
where m.dept_no = d.dept_no
group by m.emp_no
order by m.dept_no;
