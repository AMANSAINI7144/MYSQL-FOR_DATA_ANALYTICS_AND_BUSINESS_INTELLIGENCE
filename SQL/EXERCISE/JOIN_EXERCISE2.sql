DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) DEFAULT NULL,

  from_date date NOT NULL,

  to_date date DEFAULT NULL

  );

 

INSERT INTO dept_manager_dup

select * from dept_manager;

 

INSERT INTO dept_manager_dup (emp_no, from_date)

VALUES                (999904, '2017-01-01'),

                                (999905, '2017-01-01'),

                               (999906, '2017-01-01'),

                               (999907, '2017-01-01');

 

DELETE FROM dept_manager_dup

WHERE

    dept_no = 'd001';

INSERT INTO departments_dup (dept_name)

VALUES
(
	'Public Relations'
);

 

DELETE FROM departments_dup

WHERE
    dept_no = 'd002'; 

SELECT * 
FROM departments_dup;


SELECT * 
FROM dept_manager_dup;