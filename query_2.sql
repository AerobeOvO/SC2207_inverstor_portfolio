SELECT Name
FROM INVESTOR r1
JOIN Portfolio r4 ON r1.Phone = r4.INVESTOR_PhoneNumber
WHERE r4.AnnualizedReturn > 10;