#remove the duplicates from the tables
DELETE FROM dept_manager_dup
WHERE EMP_NO = '110228';

DELETE FROM dept_manager_dup
WHERE dept_NO = 'd009';

# add back the initial records
insert into dept_manager_dup
values ('110228','d003','1992-03-21','9999-01-01');

insert into departments_dup
values ('d009','CustomerService');

select * from dept_manager_dup
where EMP_NO = '110228';
select * from departments_dup
where dept_NO = 'd009';

# LEFT JOIN 
select m.dept_no , m.emp_no , d.dept_no
from dept_manager_dup m
left join departments_dup d
on m.dept_no = d.dept_no
group by m.emp_no
order by m.dept_no;