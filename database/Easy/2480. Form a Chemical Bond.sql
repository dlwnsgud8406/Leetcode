SELECT a.symbol AS metal, b.symbol AS nonmetal
FROM (
    SELECT symbol FROM elements AS e WHERE e.type = 'Metal'
    ) AS a ,
    (
         SELECT symbol FROM elements AS e WHERE e.type = 'Nonmetal'
    ) AS b
