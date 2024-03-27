SELECT user_id, SUM(quantity * price) AS spending
FROM Sales a INNER JOIN Product b on a.product_id = b.product_id
GROUP BY user_id
ORDER BY spending DESC
