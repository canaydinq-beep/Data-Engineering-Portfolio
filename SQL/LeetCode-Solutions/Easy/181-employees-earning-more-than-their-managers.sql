-- Problem 181 : Employees Earning More Than Their Managers (Easy)
-- Dialect : PostgreSQL
-- Approach : SELF JOIN

SELECT
    A.name Employee
FROM Employee A
LEFT JOIN Employee B ON A.managerID = B.id
WHERE A.salary > B.salary
