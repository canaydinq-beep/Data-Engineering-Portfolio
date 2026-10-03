-- Here's the link to the question's website.
-- https://datalemur.com/questions/matching-skills

WITH required_skills AS (
  SELECT
    candidate_id,
    skill
  FROM candidates 
  WHERE skill IN ('Python','Tableau','PostgreSQL')
  ),
numeration AS(
  SELECT
    candidate_id,
    ROW_NUMBER() OVER(PARTITION BY candidate_id) num
  FROM required_skills
  )
SELECT
  candidate_id
FROM elimination
WHERE num > 2;
