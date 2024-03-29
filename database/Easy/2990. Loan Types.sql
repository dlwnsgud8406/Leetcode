SELECT DISTINCT a.user_id
FROM Loans a JOIN Loans b ON a.user_id = b.user_id
WHERE a.loan_type = 'Mortgage' AND b.loan_type = 'Refinance'
ORDER BY a.user_id;
