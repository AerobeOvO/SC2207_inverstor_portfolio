-- QUERY 1: Find investors who are making on average a loss across all their portfolios in 2024
SELECT 
    Name
FROM 
    INVESTOR r1
JOIN 
    Portfolio r4 ON r1.Phone = r4.INVESTOR_PhoneNumber
WHERE 
    r4.AnnualizedReturn < 0;