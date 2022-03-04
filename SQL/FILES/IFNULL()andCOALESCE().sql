SELECT *
FROM departments_dup
ORDER BY DEPT_NO;

-- TRUNCATE TABLE departments_dup;
-- INSERT INTO departments_dup
-- (
-- 	DEPT_NO,
--     DEPT_NAME
-- )
-- SELECT * FROM DEPARTMENTS;

-- INSERT INTO departments_dup
-- (
-- 	DEPT_NO , DEPT_Name
-- )
-- VALUES ('D010', Null),
-- 	('D011', Null);

SELECT DEPT_NO,
	IFNULL(DEPT_MANAGER,'Department MANAGER not provided')as DEPT_NAME
from departments_dup;

-- ALTER TABLE departments_dup
-- ADD DEPT_MANAGER VARCHAR(20);


SELECT DEPT_NO,
	coalesce(DEPT_NAME,'Department MANAGER not provided') as DEPT_MANAGER
from departments_dup;

SELECT DEPT_NO,DEPT_NAME,
	coalesce(DEPT_MANAGER,DEPT_NAME,'N/A') as DEPT_MANAGER
from departments_dup
ORDER BY DEPT_NO ASC;