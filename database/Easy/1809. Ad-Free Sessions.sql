SELECT session_id
FROM Playback a LEFT JOIN Ads b ON a.customer_id = b.customer_id
AND b.timestamp BETWEEN a.start_time and a.end_time
WHERE b.customer_id IS NULL
