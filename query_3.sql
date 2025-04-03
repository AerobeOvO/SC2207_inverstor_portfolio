-- QUERY 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024
SELECT 
    strftime('%Y-%m', DateOfUnrealizedGainLoss) AS Month,
    COUNT(DISTINCT PID) AS NumberOfPortfolios,
    ROUND(AVG(Amount), 2) AS AvgUnrealizedGainLoss,
FROM 
	UnrealizedGainLoss
WHERE 
	strftime('%Y', DateOfUnrealizedGainLoss) = '2024'
GROUP BY 
	Portfolio_ID, Month, Year
ORDER BY 
	Portfolio_ID, Month;
