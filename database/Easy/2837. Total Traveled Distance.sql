SELECT a.user_id, a.name, IFNULL(SUM(b.distance), 0) AS 'traveled distance'
FROM Users a LEFT JOIN Rides b ON a.user_id = b.user_id
GROUP BY user_id
ORDER BY user_id ASC
