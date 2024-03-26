SELECT name, SUM(b.amount) AS balance
FROM Users a JOIN Transactions b ON a.account = b.account
GROUP BY a.account
HAVING SUM(b.amount) > 10000
ORDER BY balance ASC
