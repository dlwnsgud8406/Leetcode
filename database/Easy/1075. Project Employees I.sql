# Write your MySQL query statement below
SELECT a.project_id, ROUND(AVG(experience_years), 2) AS average_years
FROM Project a JOIN Employee b
ON a.employee_id = b.employee_id
GROUP BY project_id
ORDER BY a.project_id
