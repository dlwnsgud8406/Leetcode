SELECT distinct a.seat_id
FROM Cinema a join Cinema b on abs(a.seat_id - b.seat_id) = 1
and a.free = true and b.free = true
ORDER BY a.seat_id;
