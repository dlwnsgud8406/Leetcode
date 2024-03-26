SELECT b.id, b.year, IFNULL(a.npv, 0) AS npv
FROM Queries b LEFT JOIN NPV a ON b.id = a.id AND b.year = a.year