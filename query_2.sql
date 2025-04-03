-- QUERY 2: Find investors who are seeing an annualized return of more than 10% from their portfolios in 2024
SELECT 
    i.Phone,
    i.Name,
    i.Risk_Level,
    p.PID,
    p.Annualized_Return
FROM 
    INVESTOR i
JOIN 
    PORTFOLIO p ON i.Phone = p.Investor_PhoneNumber
JOIN 
    PORTFOLIO p ON m.Portfolio_ID = p.PID
WHERE 
    p.Annualized_Return > 10,
	m.Year = 2024
ORDER BY 
    p.Annualized_Return DESC;
