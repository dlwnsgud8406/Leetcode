SELECT a.project_id
FROM Project a
JOIN Employee b ON a.employee_id = b.employee_id
GROUP BY a.project_id
HAVING COUNT(b.employee_id) = (
    SELECT MAX(employee_count) FROM (
        SELECT COUNT(b.employee_id) AS employee_count
        FROM Project a
        JOIN Employee b ON a.employee_id = b.employee_id
        GROUP BY a.project_id
    ) AS project_counts
);
