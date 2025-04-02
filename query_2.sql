-- QUERY 2: Find investors who are seeing an annualized return of more than 10% from their portfolios in 2024
SELECT 
    i.ID,
    i.Name,
    i.Risk_Level,
    p.PID,
    p.Annualized_Return_2024
FROM 
    INVESTOR i
JOIN 
    PORTFOLIO p ON i.ID = p.Investor_ID
WHERE 
    p.Annualized_Return_2024 > 10
ORDER BY 
    p.Annualized_Return_2024 DESC;
