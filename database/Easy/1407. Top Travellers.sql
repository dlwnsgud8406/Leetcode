SELECT a.name, IFNULL(SUM(b.distance), 0) AS travelled_distance
FROM Users a LEFT JOIN Rides b ON a.id = b.user_id
GROUP BY b.user_id
ORDER BY travelled_distance DESC, name ASC
