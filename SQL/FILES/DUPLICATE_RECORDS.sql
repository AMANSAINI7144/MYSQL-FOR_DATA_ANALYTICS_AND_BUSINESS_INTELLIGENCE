# duplicate records
insert into dept_manager_dup
values ( '110228' , 'd003' , '1992-03-21' , '9999-01-01' );

insert into departments_dup
values ( 'd009' , 'Customer Service' );
 
 select * 
 from dept_manager_dup
 order by dept_no ;
 
  select * 
 from departments_dup
 order by dept_no ; 
  
# inner join 
select  m.dept_no , m.emp_no , d.dept_name
from dept_manager_dup m
join departments_dup d 
on m.dept_no = d.dept_no
group by m.emp_no
order by dept_no;