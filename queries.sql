-- QUERY 1: Find investors who are making on average a loss across all their portfolios in 2024
SELECT 
    i.ID,
    i.Name,
    i.Gender,
    i.Company,
    AVG(p.Annualized_Return_2024) AS Avg_Portfolio_Return_2024
FROM 
    INVESTOR i
JOIN 
    PORTFOLIO p ON i.ID = p.Investor_ID
GROUP BY 
    i.ID, i.Name, i.Gender, i.Company
HAVING 
    AVG(p.Annualized_Return_2024) < 0
ORDER BY 
    Avg_Portfolio_Return_2024 ASC;

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
    INVESTOR i ON p.Investor_ID = i.ID
WHERE 
    m.Year = 2024
ORDER BY 
    p.PID, m.Month;

-- QUERY 4: What is the top three most popular first financial goals for investors in 2024?
-- (Assuming "first" means priority = 1 and created in 2023 for 2024 planning)
SELECT 
    fg.Goal,
    COUNT(*) AS Goal_Count
FROM 
    FINANCIAL_GOAL fg
WHERE 
    fg.Priority = 1
    AND strftime('%Y', fg.Creation_Date) = '2023'
GROUP BY 
    fg.Goal
ORDER BY 
    Goal_Count DESC
LIMIT 3;

-- QUERY 5: Find investors who consistently top up their investment at the beginning of every month (dollar-cost averaging) in 2024 for at least one of their portfolios
WITH MonthlyTopUps AS (
    SELECT 
        t.Portfolio_ID,
        COUNT(DISTINCT t.Month) AS Months_Invested
    FROM (
        SELECT 
            Portfolio_ID,
            strftime('%m', Date) AS Month
        FROM 
            INVESTMENT_TRANSACTION
        WHERE 
            strftime('%Y', Date) = '2024'
            AND Type = 'Buy'
            AND strftime('%d', Date) = '01'
    ) t
    GROUP BY 
        t.Portfolio_ID
    HAVING 
        COUNT(DISTINCT t.Month) >= 6
)
SELECT 
    i.ID,
    i.Name,
    i.Gender,
    i.Company,
    p.PID,
    mt.Months_Invested
FROM 
    MonthlyTopUps mt
JOIN 
    PORTFOLIO p ON mt.Portfolio_ID = p.PID
JOIN 
    INVESTOR i ON p.Investor_ID = i.ID
ORDER BY 
    mt.Months_Invested DESC;

-- QUERY 6: Find the most popular financial goals for investors working in the same company and whose age is between 30 to 40 years old
SELECT 
    i.Company,
    fg.Goal,
    COUNT(*) AS Goal_Count,
    GROUP_CONCAT(DISTINCT i.Name) AS Employees
FROM 
    FINANCIAL_GOAL fg
JOIN 
    INVESTOR i ON fg.Investor_ID = i.ID
WHERE 
    (strftime('%Y', 'now') - strftime('%Y', i.DoB)) BETWEEN 30 AND 40
GROUP BY 
    i.Company, fg.Goal
HAVING 
    COUNT(*) > 1 -- Only show goals shared by multiple employees
ORDER BY 
    i.Company, Goal_Count DESC;

-- QUERY 7: Are male investors in their 20s making more money from their investments than their female counterparts in 2024?
WITH AgeCalculation AS (
    SELECT 
        ID,
        Name,
        Gender,
        (strftime('%Y', 'now') - strftime('%Y', DoB)) AS Age
    FROM 
        INVESTOR
),
InvestmentReturns AS (
    SELECT 
        ac.Gender,
        ac.Age,
        AVG(p.Annualized_Return_2024) AS Avg_Return_2024,
        COUNT(DISTINCT p.PID) AS Portfolio_Count
    FROM 
        AgeCalculation ac
    JOIN 
        PORTFOLIO p ON ac.ID = p.Investor_ID
    WHERE 
        ac.Age BETWEEN 20 AND 29
    GROUP BY 
        ac.Gender, ac.Age
)
SELECT 
    Gender,
    ROUND(AVG(Avg_Return_2024), 2) AS Average_Return,
    SUM(Portfolio_Count) AS Total_Portfolios,
    COUNT(*) AS Investor_Count
FROM 
    InvestmentReturns
GROUP BY 
    Gender
ORDER BY 
    Average_Return DESC;