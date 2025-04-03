SELECT 
    ((COUNT(DISTINCT fg.Investor_Phone)*100) / (SELECT COUNT(*) FROM INVESTOR)) AS Education_Goal_Percentage
FROM FINANCIAL_GOAL fg
WHERE fg.Goal LIKE 'to fund children’s education' AND fg.Timeline < 11;