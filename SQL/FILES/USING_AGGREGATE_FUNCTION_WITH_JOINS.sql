SELECT e.gender, avg(s.salary) as avg_sal
from salaries s
join employees e
on e.emp_no = s.emp_no
group by gender;

