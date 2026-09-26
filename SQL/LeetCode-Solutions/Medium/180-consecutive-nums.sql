-- Problem 180 : Consecutive Numbers (Medium)
-- Dialect : MSSQL (T-SQL)
-- Approach : I found out with the ROW_NUMBER() function that the difference between the IDs of the partitioned state of the
-- records in consecutive records and the IDs of the records in the main table remains constant, and I distinguished it
-- with the GROUP BY function if this same state of remains constant occurred at least 3 times.

WITH RankedLogs AS(
  SELECT
    num,
    ROW_NUMBER() OVER(ORDER BY id) -
    ROW_NUMBER() OVER(PARTITION BY num ORDER BY id) AS grp 
  FROM Logs)
SELECT DISTINCT
  num AS ConsecutiveNums
FROM RankedLogs
GROUP BY num, grp
HAVING COUNT(*) >= 3
