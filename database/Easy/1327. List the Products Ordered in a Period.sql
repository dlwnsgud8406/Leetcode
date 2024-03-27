SELECT a.product_name, SUM(b.unit) AS unit
FROM Products a
JOIN Orders b ON a.product_id = b.product_id
WHERE b.order_date LIKE '2020-02-%'
GROUP BY a.product_name
HAVING SUM(b.unit) >= 100;
