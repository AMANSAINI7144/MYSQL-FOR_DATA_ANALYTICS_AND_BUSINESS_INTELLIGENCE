-- SELECT *
-- FROM employees
-- WHERE FIRST_NAME = 'Cathie'
-- 	OR first_name = 'Mark'
--     OR first_name = 'Nathan';

-- SELECT 
-- 	*
-- FROM 
--  	employees
-- WHERE
-- 	FIRST_NAME IN ('Cathie' , 'Mark', 'Nathan');
    
SELECT 
	*
FROM 
 	employees
WHERE
	FIRST_NAME NOT IN ('Cathie' , 'Mark', 'Nathan');