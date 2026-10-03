-- Here's the link to the question's website.
-- https://datalemur.com/questions/sql-histogram-tweets

WITH user_tweet AS(
SELECT
  user_id,
  COUNT(*) tweet_bucket
FROM tweets
WHERE EXTRACT(YEAR FROM tweet_date) = 2022
GROUP BY user_id
)
SELECT
  tweet_bucket,
  COUNT(*) users_num
FROM user_tweet
GROUP BY tweet_bucket
ORDER BY tweet_bucket
