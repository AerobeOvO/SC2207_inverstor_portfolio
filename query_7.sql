-- QUERY 7: Compare investment performance by gender (ages 20-29) in 2024
WITH InvestorAges AS (
    SELECT 
        Phone,
        Name,
        Gender,
        (CAST(strftime('%Y', 'now') AS INTEGER) - CAST(strftime('%Y', DateOfBirth) AS INTEGER)) AS Age
    FROM 
        INVESTOR
),

PortfolioPerformance AS (
    SELECT 
        i.Phone,
        i.Gender,
        i.Age,
        p.PID,
        p.AnnualizedReturn,
        -- Calculate total unrealized gains for each portfolio
        (SELECT COALESCE(SUM(Amount), 0) 
         FROM UnrealizedGainLoss u 
         WHERE u.PID = p.PID 
           AND strftime('%Y', u.DateOfUnrealizedGainLoss) = '2024'
        ) AS TotalUnrealizedGains,
        p.MarketValue
    FROM 
        InvestorAges i
    JOIN 
        PORTFOLIO p ON i.Phone = p.Investor_PhoneNumber
    WHERE 
        i.Age BETWEEN 20 AND 29
)

SELECT 
    Gender,
    COUNT(DISTINCT Phone) AS NumberOfInvestors,
    COUNT(PID) AS NumberOfPortfolios,
    ROUND(AVG(AnnualizedReturn), 2) AS AvgAnnualReturn,
    ROUND(SUM(TotalUnrealizedGains), 2) AS TotalUnrealizedGains,
    ROUND(SUM(MarketValue), 2) AS TotalMarketValue,
    -- Prevent division by zero in GainPercentage calculation
    CASE 
        WHEN SUM(MarketValue) = 0 THEN 0
        ELSE ROUND(SUM(TotalUnrealizedGains) * 100.0 / SUM(MarketValue), 2) 
    END AS GainPercentage
FROM 
    PortfolioPerformance
GROUP BY 
    Gender
ORDER BY 
    AvgAnnualReturn DESC;
