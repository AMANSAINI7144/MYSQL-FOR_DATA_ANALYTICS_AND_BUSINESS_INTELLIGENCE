SELECT e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM employees e
left join dept_manager m
on e.emp_no = m.emp_no
where e.last_name='Markovitch'
group by emp_no
order by dept_no desc ;


SELECT
    e.emp_no,  
    e.first_name,  
    e.last_name,  
    dm.dept_no,  
    dm.from_date  
FROM  
    employees e 
        LEFT JOIN   
dept_manager dm ON e.emp_no = dm.emp_no  
WHERE  
    e.last_name = 'Markovitch'  
ORDER BY dm.dept_no DESC, e.emp_no;