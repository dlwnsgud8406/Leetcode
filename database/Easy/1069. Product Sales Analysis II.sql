SELECT a.product_id, sum(a.quantity) AS total_quantity
FROM Sales a JOIN Product b
ON a.product_id = b.product_id
GROUP BY a.product_id