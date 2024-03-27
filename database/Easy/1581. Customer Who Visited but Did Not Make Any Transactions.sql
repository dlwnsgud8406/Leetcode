SELECT a.customer_id, COUNT(*) AS count_no_trans
FROM Visits a LEFT JOIN Transactions b ON a.visit_id = b.visit_id
WHERE b.visit_id IS NULL
GROUP BY customer_id
