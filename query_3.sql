-- QUERY 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024
SELECT 
    PID AS Portfolio_ID,
    strftime('%m', DateOfUnrealizedGainLoss) AS Month,
    strftime('%Y', DateOfUnrealizedGainLoss) AS Year,
    AVG(Amount) AS Avg_Unrealized_Gain_Loss
FROM 
	UnrealizedGainLoss
WHERE 
	strftime('%Y', DateOfUnrealizedGainLoss) = '2024'
GROUP BY 
	Portfolio_ID, Month, Year
ORDER BY 
	Portfolio_ID, Month;
