-- Query 5: Find investors who consistently top up their investment at the beginning of every month (dollar-cost averaging) in 2024 for at least one of their portfolios.

SELECT 
    iv.Investor_PhoneNumber,
    i.Name,
    iv.PID,
    COUNT(DISTINCT strftime('%m', iv.DateOfInvestedValue)) AS MonthsToppedUp
FROM 
    InvestedValue iv
JOIN 
    INVESTOR i ON i.Phone = iv.Investor_PhoneNumber
WHERE 
    strftime('%Y', iv.DateOfInvestedValue) = '2024' AND
    CAST(strftime('%d', iv.DateOfInvestedValue) AS INTEGER) BETWEEN 1 AND 7
GROUP BY 
    iv.PID, iv.Investor_PhoneNumber
HAVING 
    COUNT(DISTINCT strftime('%m', iv.DateOfInvestedValue)) = 12;
