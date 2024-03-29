CREATE FUNCTION getUserIDs(startDate DATE, endDate DATE, minAmount INT) RETURNS INT
BEGIN
  RETURN (
    SELECT COUNT(DISTINCT user_Id)
    FROM Purchases
    WHERE time_stamp BETWEEN TIMESTAMP(startDate) and TIMESTAMP(EndDate) and amount >= minAmount
      # Write your MySQL query statement below.
  );
END
