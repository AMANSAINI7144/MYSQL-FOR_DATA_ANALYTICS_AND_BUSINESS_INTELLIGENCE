CREATE TABLE dept_manager_dup
(
	emp_no int,
	dept_no CHAR(4) NOT NULL,
    from_date date,
    to_date date
);

INSERT INTO dept_manager_dup
(
	emp_no ,
	dept_no ,
    from_date ,
    to_date
)
SELECT * FROM dept_manager;

select * FROM dept_manager_dup;

SELECT * 
FROM dept_manager_dup
ORDER BY DEPT_NO;

SELECT * 
FROM departments_dup
ORDER BY DEPT_NO;


