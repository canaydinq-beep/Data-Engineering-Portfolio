-- Problem 182 : Duplicate Emails (Easy)
-- Dialect : PostgreSQL
-- Approach : GROUP BY & Aggregation

SELECT
    email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1
