-- Problem 175 : Combine Two Tables (Easy)
/* Problem Description : Write a solution to report the first name, last name, city, and state of each person in the Person table. 
If the address of a personId is not present in the Address table, report null instead.
Return the result table in any order. */

-- Dialect : MSSQL (T-SQL)
-- Approach : LEFT JOIN

SELECT 
    P.firstName,
    P.lastName,
    A.city,
    A.state
FROM Person P
LEFT JOIN Address A
ON P.personID = A.personID 
