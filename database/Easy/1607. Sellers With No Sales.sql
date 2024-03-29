SELECT seller_name
FROM seller s
LEFT JOIN (SELECT seller_id, customer_id
          FROM orders
          WHERE year(sale_date)=2020) o
USING(seller_id)
WHERE o.customer_id IS NULL
ORDER BY 1
