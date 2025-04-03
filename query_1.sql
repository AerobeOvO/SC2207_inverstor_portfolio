SELECT i.PID, i.Name
FROM Investor i
JOIN Portfolio p ON i.InvestorID = p.InvestorID
WHERE YEAR(p.StartDate) <= 2024
  AND (p.EndDate IS NULL OR YEAR(p.EndDate) >= 2024)  
GROUP BY i.InvestorID, i.Name
HAVING AVG(p.MarketValue - p.InvestedAmount) < 0;