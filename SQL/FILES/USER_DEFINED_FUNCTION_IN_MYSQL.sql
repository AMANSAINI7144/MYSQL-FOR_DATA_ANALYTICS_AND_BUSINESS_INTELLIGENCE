USE EMPLOYEES;
DROP FUNCTION IF EXISTS F_EMP_AVG_SALARY;

DELIMITER $$
CREATE FUNCTION F_EMP_AVG_SALARY(P_EMP_NO INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN

	DECLARE V_AVG_SALARY DECIMAL(10,2);
	
    SELECT 
		AVG(S.SALARY)
		INTO 
			V_AVG_SALARY 
	FROM 
		EMPLOYEES E
	JOIN 
		SALARIES S
	ON 
		E.EMP_NO = S.EMP_NO
	WHERE
		E.EMP_NO = P_EMP_NO;
        
RETURN V_AVG_SALARY;

END$$

DELIMITER ;

SELECT F_EMP_AVG_SALARY(11300);