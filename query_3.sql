SELECT 
    strftime('%Y-%m', DateOfUnrealizedGainLoss) AS Month,
    COUNT(DISTINCT PID) AS NumberOfPortfolios,
    ROUND(AVG(Amount), 2) AS AvgUnrealizedGainLoss,
FROM 
    UnrealizedGainLoss
WHERE 
    strftime('%Y', DateOfUnrealizedGainLoss) = '2024'
GROUP BY 
    strftime('%Y-%m', DateOfUnrealizedGainLoss)
ORDER BY 
    Month;