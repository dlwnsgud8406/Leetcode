# Write your MySQL query statement below
SELECT A.name AS warehouse_name, SUM(A.units * B.cubic_ft) AS volume
FROM Warehouse A LEFT JOIN (
    SELECT p.product_id, p.width * p.length * p.height AS cubic_ft
    FROM Products P
    ) AS B
ON A.product_id = B.product_id
GROUP BY warehouse_name
