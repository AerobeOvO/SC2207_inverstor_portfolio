-- QUERY 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024
SELECT 
    p.PID,
    i.Name AS Investor_Name,
    m.Month,
    m.Year,
    m.Avg_Unrealized_Gain_Loss,
    CASE 
        WHEN m.Avg_Unrealized_Gain_Loss >= 0 THEN 'Profit'
        ELSE 'Loss'
    END AS Profit_Loss_Status
FROM 
    MONTHLY_PORTFOLIO_PERFORMANCE m
JOIN 
    PORTFOLIO p ON m.Portfolio_ID = p.PID
JOIN 
    INVESTOR i ON p.Investor_ID = i.Phone
WHERE 
    m.Year = 2024
ORDER BY 
    p.PID, m.Month;
