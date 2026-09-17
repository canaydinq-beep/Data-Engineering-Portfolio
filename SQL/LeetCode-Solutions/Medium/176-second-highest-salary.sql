-- Problem 176 : Second Highes Salary (Medium)
/* Problem Description : Write a solution to find the second highest distinct salary from the employee table.
If there is no second highest salary then return null. */

-- Dialect : MSSQL (T-SQL)
-- Approach : Subquery in WHERE clause and MAX() function.

SELECT
  MAX(Salary)
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
