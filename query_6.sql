-- QUERY 6: Find the most popular financial goals for investors working in the same company and whose age is between 30 to 40 years old

SELECT 
    fg.Goal, 
    i.Company, 
    COUNT(*) AS Goal_Count
FROM 
    INVESTOR i
JOIN 
    FINANCIAL_GOAL fg ON i.Phone = fg.Investor_Phone
WHERE 
    (strftime('%Y', 'now') - strftime('%Y', i.DateOfBirth)) BETWEEN 30 AND 40
GROUP BY 
    fg.Goal, i.Company
HAVING 
    COUNT(*) > 1
ORDER BY 
    Goal_Count DESC;
