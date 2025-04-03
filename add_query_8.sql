SELECT 
    CASE 
        WHEN strftime('%Y', '2024-01-01') - strftime('%Y', DateOfBirth) BETWEEN 20 AND 29 THEN '20s'
        WHEN strftime('%Y', '2024-01-01') - strftime('%Y', DateOfBirth) BETWEEN 30 AND 39 THEN '30s'
        ELSE '40+'
    END AS AgeGroup,
    RiskLevel,
    COUNT(*) AS Count
FROM INVESTOR i
JOIN RISK_TOLERANCE r ON i.Phone = r.Investor_PhoneNumber
GROUP BY AgeGroup, RiskLevel;
