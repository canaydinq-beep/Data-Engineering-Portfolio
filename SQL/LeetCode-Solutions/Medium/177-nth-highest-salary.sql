-- Problem 177 : Nth Highest Salary
/* Problem Description : Write a solution to find the nth highest distinct salary from the Employee table.
If there are less than n distinct salaries, return null. */

-- Dialect : MSSQL (T-SQL)
-- Approach : Subquery and Window Function (DENSE_RANK())

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    DECLARE @ans INT;

    SELECT @ans = salary
    FROM (
        SELECT
            *,
            DENSE_RANK() OVER(ORDER BY salary DESC) rnk
        FROM Employee
    )t
    WHERE t.rnk = @N

    RETURN @ans;
END
