-- Query 5: Find investors who consistently top up their investment at the beginning of every month (dollar-cost averaging) in 2024 for at least one of their portfolios.

SELECT 
    i.Name,
    iv.PID,
    COUNT(DISTINCT strftime('%m', iv.DateOfInvestedValue)) AS MonthsToppedUp
FROM 
    InvestedValue iv
JOIN 
    PORTFOLIO p ON iv.PID = p.PID
JOIN 
    INVESTOR i ON p.Investor_PhoneNumber = i.Phone
WHERE 
    strftime('%Y', iv.DateOfInvestedValue) = '2024'
    AND CAST(strftime('%d', iv.DateOfInvestedValue) AS INTEGER) BETWEEN 1 AND 31
GROUP BY 
    iv.PID
HAVING 
    COUNT(DISTINCT strftime('%m', iv.DateOfInvestedValue)) = 12;
