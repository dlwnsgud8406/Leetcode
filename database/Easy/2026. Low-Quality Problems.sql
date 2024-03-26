# Write your MySQL query statement below
SELECT problem_id
FROM problems
WHERE likes / (likes + dislikes) * 100.0 < 60
ORDER BY problem_id