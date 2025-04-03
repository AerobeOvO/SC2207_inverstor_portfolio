SELECT 
    strftime('%Y-%m', DateOfUnrealizedGainLoss) AS Month,
    COUNT(DISTINCT PID) AS NumberOfPortfolios,
    ROUND(AVG(Amount), 2) AS AvgUnrealizedGainLoss,
    ROUND(MIN(Amount), 2) AS MinUnrealizedGainLoss,
    ROUND(MAX(Amount), 2) AS MaxUnrealizedGainLoss,
    ROUND(SUM(Amount), 2) AS TotalUnrealizedGainLoss
FROM 
    UnrealizedGainLoss
WHERE 
    strftime('%Y', DateOfUnrealizedGainLoss) = '2024'
GROUP BY 
    strftime('%Y-%m', DateOfUnrealizedGainLoss)
ORDER BY 
    Month;