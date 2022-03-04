SELECT d.dept_name , avg(s.salary) as Avg_sal
from departments_dup d
join dept_manager_dup dm
on d.dept_no = dm.dept_no
join salaries s
on s.emp_no = dm.emp_no
group by d.dept_name
having Avg_sal > 60000
order by Avg_sal desc;

-- select * from departments_dup
-- where dept_name = 'Marketing';