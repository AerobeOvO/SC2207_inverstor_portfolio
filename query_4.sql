-- QUERY 4: What is the top three most popular first financial goals for investors in 2024?

SELECT 
    fg.Goal,
    COUNT(*) AS Goal_Count
FROM 
    FINANCIAL_GOAL fg
GROUP BY 
    fg.Goal
ORDER BY 
    Goal_Count DESC
LIMIT 3;