# LEFT JOIN REVERSING ORDER OF THE TABLE
select m.dept_no,m.emp_no , d.dept_name 
from dept_manager_dup m
left outer join departments_dup d
on m.dept_no = d.dept_no
where dept_name is null
group by m.emp_no
order by m.dept_no;

