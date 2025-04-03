-- QUERY 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024
SELECT 
    strftime('%Y-%m', DateOfUnrealizedGainLoss) AS Month,
    AVG(Amount) AS Avg_Unrealized_Gain_Loss
FROM 
    UnrealizedGainLoss
WHERE 
    strftime('%Y', DateOfUnrealizedGainLoss) = '2024'
GROUP BY 
    Month
ORDER BY 
    Month;
