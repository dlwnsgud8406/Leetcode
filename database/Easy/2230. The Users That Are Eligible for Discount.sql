CREATE PROCEDURE getUserIDs(startDate DATE, endDate DATE, minAmount INT)
BEGIN
    SELECT DISTINCT user_id
    FROM purchases
    WHERE time_stamp >= startDate and time_stamp <= endDate and amount >= minAmount
    ORDER BY user_id;
END
