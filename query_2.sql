-- QUERY 2: Find investors who are seeing an annualized return of more than 10% from their portfolios in 2024
SELECT 
    Name
FROM 
    INVESTOR r1
JOIN 
    Portfolio r4 ON r1.Phone = r4.INVESTOR_PhoneNumber
WHERE 
    r4.AnnualizedReturn > 10;