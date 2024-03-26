SELECT city
FROM Listings
GROUP BY city
HAVING AVG(price) > (SELECT avg(price) FROM Listings)
ORDER BY city