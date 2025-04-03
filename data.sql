-- Clear tables while maintaining referential integrity
DELETE FROM FUND_IN_PORTFOLIO;
DELETE FROM BOND_IN_PORTFOLIO;
DELETE FROM STOCK_IN_PORTFOLIO;
DELETE FROM INVESTMENT_TRANSACTION;
DELETE FROM MONTHLY_PORTFOLIO_PERFORMANCE;
DELETE FROM BOND;
DELETE FROM FUND;
DELETE FROM STOCK;
DELETE FROM ASSETS;
DELETE FROM UnrealizedGainLoss;
DELETE FROM InvestedValue;
DELETE FROM PORTFOLIO;
DELETE FROM FINANCIAL_GOAL;
DELETE FROM RISK_TOLERANCE;
DELETE FROM INVESTOR;

-- Insert 20 Investors (Singapore-based)
INSERT INTO INVESTOR (Phone, Name, Gender, DateOfBirth, AnnualIncome, Company) VALUES
-- Young Investors (20-29)
('+6581001234', 'Tan Wei Ming', 'Male', '1998-05-12', 45000, 'Grab'),
('+6582002345', 'Nurul Aisyah', 'Female', '1999-11-03', 38000, 'Shopee'),
('+6583003456', 'Rajesh Kumar', 'Male', '1997-02-28', 55000, 'DBS Bank'),
('+6584004567', 'Lim Jia Hui', 'Female', '1996-08-19', 60000, 'TikTok Singapore'),
('+6585005678', 'Wong Fei Hong', 'Male', '1995-07-25', 48000, 'FoodPanda'),
('+6586006789', 'Siti Binte Omar', 'Female', '1994-09-14', 65000, 'Singapore Airlines'),
('+6587007890', 'Jason Tan', 'Male', '1999-12-05', 42000, 'Lazada'),
('+6588008901', 'Priya Govind', 'Female', '1996-04-22', 58000, 'Standard Chartered'),
('+6589009012', 'Mohammad Ali', 'Male', '1997-10-15', 52000, 'GovTech'),
('+6590000123', 'Amanda Ng', 'Female', '1995-03-08', 70000, 'Temasek Holdings'),

-- Established Investors (30-40)
('+6591001234', 'Lee Chong Wei', 'Male', '1988-06-18', 120000, 'OCBC Bank'),
('+6592002345', 'Sarah Lim', 'Female', '1987-09-27', 110000, 'Singtel'),
('+6593003456', 'David Wong', 'Male', '1985-11-30', 150000, 'ST Engineering'),
('+6594004567', 'Fatimah Binte Yusof', 'Female', '1989-04-05', 95000, 'ST Engineering'),
('+6595005678', 'Richard Goh', 'Male', '1983-12-12', 180000, 'Sea Limited'),
('+6596006789', 'Jennifer Ho', 'Female', '1986-07-22', 130000, 'Razer'),
('+6597007890', 'Arjun Patel', 'Male', '1984-02-14', 160000, 'BioNTech Singapore'),
('+6598008901', 'Grace Chan', 'Female', '1982-10-08', 140000, 'Sea Limited'),
('+6599009012', 'Benjamin Koh', 'Male', '1987-05-19', 170000, 'Shell Singapore'),
('+6510000123', 'Nur Syafiqah', 'Female', '1985-08-31', 125000, 'ST Engineering');

-- Insert Financial Goals
INSERT INTO FINANCIAL_GOAL (Investor_Phone, Goal, Amount, Timeline, YearCreated) VALUES
-- Young investors
('+6581001234', 'BTO Flat Downpayment', 100000, 5, 2023),
('+6582002345', 'Further Education', 50000, 3, 2022),
('+6583003456', 'Start Business', 200000, 8, 2024),
('+6584004567', 'Investment Property', 500000, 12, 2025),
('+6585005678', 'Wedding Fund', 40000, 2, 2023),
('+6586006789', 'Retirement', 1000000, 25, 2022),
('+6587007890', 'Travel Fund', 30000, 3, 2022),
('+6588008901', 'Parents Retirement', 200000, 10, 2025),
('+6589009012', 'Car Purchase', 80000, 4, 2024),
('+6590000123', 'Wealth Accumulation', 500000, 15, 2025),

-- Established investors
('+6591001234', 'Children Education', 250000, 8, 2023),
('+6592002345', 'Retirement', 1500000, 15, 2025),
('+6593003456', 'Second Property', 800000, 10, 2024),
('+6594004567', 'Second Property', 350000, 7, 2024),
('+6595005678', 'Early Retirement', 2000000, 12, 2025),
('+6596006789', 'Wealth Preservation', 1000000, 20, 2025),
('+6597007890', 'Philanthropy Fund', 500000, 15, 2024),
('+6598008901', 'Early Retirement', 300000, 10, 2025),
('+6599009012', 'Legacy Planning', 1500000, 25, 2024),
('+6510000123', 'Second Property', 500000, 8, 2025);




-- Insert Portfolios with Singaporean characteristics
INSERT INTO PORTFOLIO (PID, Investor_PhoneNumber, InvestedValueDate, UnrealizedGainLossDate, Fee, MarketValue, InceptionDate, AnnualizedReturn) VALUES
-- Young investors (higher risk/reward)
('P1001', '+6581001234', '2024-12-31', '2024-12-31', 0.002, 55000, '2021-01-15', 12.5),
('P1002', '+6582002345', '2024-12-31', '2024-12-31', 0.0015, 32000, '2022-03-10', 8.7),
('P1003', '+6583003456', '2024-12-31', '2024-12-31', 0.0025, 78000, '2020-11-30', 15.2),
('P1004', '+6584004567', '2024-12-31', '2024-12-31', 0.0018, 105000, '2019-07-22', 18.4),
('P1005', '+6585005678', '2024-12-31', '2024-12-31', 0.002, 42000, '2021-09-15', 9.8),
('P1006', '+6586006789', '2024-12-31', '2024-12-31', 0.0012, 125000, '2020-05-18', 14.3),
('P1007', '+6587007890', '2024-12-31', '2024-12-31', 0.0022, 36000, '2022-02-14', 7.5),
('P1008', '+6588008901', '2024-12-31', '2024-12-31', 0.0017, 95000, '2021-07-30', 11.9),
('P1009', '+6589009012', '2024-12-31', '2024-12-31', 0.0023, 62000, '2022-01-05', 10.2),
('P1010', '+6590000123', '2024-12-31', '2024-12-31', 0.0015, 155000, '2019-12-20', 16.8),
('P1011', '+6581555123', '2024-12-31', '2024-12-31', 0.0018, 85000, '2022-01-01', 10.2),
('P1012', '+6581666234', '2024-12-31', '2024-12-31', 0.0019, 102000, '2023-02-01', 11.0),

-- Established investors (more stable)
('P2001', '+6591001234', '2024-12-31', '2024-12-31', 0.001, 310000, '2018-05-20', 7.2),
('P2002', '+6592002345', '2024-12-31', '2024-12-31', 0.0012, 260000, '2017-02-15', 6.5),
('P2003', '+6593003456', '2024-12-31', '2024-12-31', 0.0008, 420000, '2016-11-30', 8.1),
('P2004', '+6594004567', '2024-12-31', '2024-12-31', 0.0015, 185000, '2019-04-05', 5.9),
('P2005', '+6595005678', '2024-12-31', '2024-12-31', 0.002, 520000, '2020-09-15', 10.3),
('P2006', '+6596006789', '2024-12-31', '2024-12-31', 0.0011, 225000, '2018-08-22', 7.8),
('P2007', '+6597007890', '2024-12-31', '2024-12-31', 0.0009, 360000, '2017-07-19', 6.7),
('P2008', '+6598008901', '2024-12-31', '2024-12-31', 0.0013, 285000, '2019-11-11', 5.5),
('P2009', '+6599009012', '2024-12-31', '2024-12-31', 0.0014, 470000, '2018-03-25', 9.1),
('P2010', '+6510000123', '2024-12-31', '2024-12-31', 0.001, 330000, '2020-01-10', 7.9);

-- Insert Singapore and Global Assets
INSERT INTO ASSETS (ASSETID, Name, Price) VALUES
-- Singapore Stocks
('D05', 'DBS Group', 35.20),
('O39', 'OCBC Bank', 13.50),
('U11', 'UOB', 28.75),
('Z74', 'Singtel', 2.45),
('C09', 'City Developments', 6.80),
('J36', 'Jardine Matheson', 52.30),
('C38U', 'CapitaLand Integrated Commercial Trust', 2.15),
('A17U', 'Ascendas REIT', 2.90),
('BN4', 'Keppel Corporation', 7.25),
('BS6', 'YZJ Shipbuilding', 1.75),

-- International Stocks
('AAPL', 'Apple Inc.', 175.25),
('MSFT', 'Microsoft', 305.42),
('TSLA', 'Tesla', 210.75),
('NVDA', 'NVIDIA', 450.30),
('AMZN', 'Amazon', 125.80),

-- Bonds
('SGS10Y', '10-Year Singapore Government Bond', 98.20),
('T2025', 'Temasek 2025 Bond', 101.50),
('MASB2027', 'MAS Bond 2027', 99.80),
('US10Y', 'US Treasury 10-Year', 96.75),

-- Funds/ETFs
('ES3', 'STI ETF', 3.25),
('MBH', 'ABF Singapore Bond ETF', 1.12),
('CLR', 'SPDR Straits Times Index ETF', 3.30),
('EIMI', 'iShares MSCI Emerging Markets ETF', 25.40),
('IWDA', 'iShares World ETF', 75.60);

-- Insert Stock Details
INSERT INTO STOCK (ASSETID, P_E_Ratio, EPS, EBITDA) VALUES
('D05', 12.5, 2.80, 8500000000),
('O39', 10.8, 1.25, 6200000000),
('U11', 11.2, 2.55, 7300000000),
('Z74', 15.3, 0.16, 4200000000),
('C09', 8.7, 0.78, 1800000000),
('AAPL', 28.5, 5.67, 120000000000),
('MSFT', 32.1, 7.89, 169000000000),
('TSLA', 85.3, 2.45, 85000000000),
('NVDA', 65.2, 6.90, 32000000000),
('AMZN', 58.7, 2.14, 75000000000);

-- Insert Bond Details
INSERT INTO BOND (ASSETID, ExpenseRatio, DividendYield) VALUES
('SGS10Y', 0.0015, 3.2),
('T2025', 0.0020, 3.8),
('MASB2027', 0.0018, 3.5),
('US10Y', 0.0025, 4.1);

-- Insert Fund Details
INSERT INTO FUND (ASSETID, ExpenseRatio, DividendYield, ID) VALUES
('ES3', 0.0030, 3.0, 'STI'),
('MBH', 0.0025, 2.8, 'ABF'),
('CLR', 0.0035, 3.2, 'STI2'),
('EIMI', 0.0065, 1.8, 'EM'),
('IWDA', 0.0020, 1.5, 'WORLD');

-- Insert Portfolio Allocations (Singapore-focused)
INSERT INTO STOCK_IN_PORTFOLIO (StockID, PID, StartDate, AllocationRatio, PostTradeCO) VALUES
-- Young investors (higher allocation to growth stocks)
('AAPL', 'P1001', '2021-02-15', 0.4, 21990.00),
('MSFT', 'P1003', '2020-12-10', 0.5, 38990.00),
('D05', 'P1004', '2019-08-22', 0.3, 31490.00),
('TSLA', 'P1006', '2020-06-18', 0.35, 43740.00),
('Z74', 'P1008', '2021-08-30', 0.25, 23740.00),

-- Established investors (more balanced)
('O39', 'P2001', '2018-06-20', 0.2, 61990.00),
('U11', 'P2003', '2016-12-30', 0.25, 104990.00),
('C09', 'P2005', '2020-10-15', 0.15, 77990.00),
('AAPL', 'P2007', '2017-08-19', 0.3, 107990.00),
('D05', 'P2009', '2018-04-25', 0.35, 164490.00);

INSERT INTO BOND_IN_PORTFOLIO (BondID, PID, StartDate, AllocationRatio, PostTradeCO) VALUES
-- Young investors (smaller bond allocation)
('SGS10Y', 'P1002', '2022-04-10', 0.15, 4790.00),
('T2025', 'P1005', '2021-10-15', 0.2, 8390.00),
('MASB2027', 'P1007', '2022-03-14', 0.1, 3590.00),

-- Established investors (larger bond allocation)
('SGS10Y', 'P2002', '2017-03-15', 0.3, 77990.00),
('US10Y', 'P2004', '2019-05-05', 0.4, 73990.00),
('T2025', 'P2006', '2018-09-22', 0.35, 78740.00),
('MASB2027', 'P2008', '2019-12-11', 0.25, 71240.00),
('SGS10Y', 'P2010', '2020-02-10', 0.3, 98990.00);

INSERT INTO FUND_IN_PORTFOLIO (FundID, PID, StartDate, AllocationRatio, PostTradeCO) VALUES
-- Young investors (higher ETF allocation)
('ES3', 'P1001', '2021-02-15', 0.25, 13740.00),
('EIMI', 'P1003', '2020-12-10', 0.2, 15590.00),
('IWDA', 'P1006', '2020-06-18', 0.3, 37490.00),
('MBH', 'P1009', '2022-02-05', 0.15, 9290.00),

-- Established investors (more diversified funds)
('CLR', 'P2001', '2018-06-20', 0.15, 46490.00),
('IWDA', 'P2003', '2016-12-30', 0.2, 83990.00),
('ES3', 'P2005', '2020-10-15', 0.1, 51990.00),
('MBH', 'P2007', '2017-08-19', 0.25, 89990.00),
('EIMI', 'P2010', '2020-02-10', 0.15, 49490.00);

-- Insert Transactions (2024 activity)
INSERT INTO INVESTMENT_TRANSACTION (ID, Date, PID, Type, Fee) VALUES
-- Young investors (more frequent trading)
('T20240101', '2024-01-05', 'P1001', 'Buy', 9.99),
('T20240102', '2024-01-15', 'P1003', 'Buy', 9.99),
('T20240201', '2024-02-10', 'P1004', 'Sell', 9.99),
('T20240301', '2024-03-08', 'P1006', 'Buy', 9.99),
('T20240401', '2024-04-12', 'P1008', 'Buy', 9.99),

-- Established investors (less frequent trading)
('T20240501', '2024-05-18', 'P2001', 'Buy', 9.99),
('T20240601', '2024-06-22', 'P2003', 'Sell', 9.99),
('T20240701', '2024-07-05', 'P2005', 'Buy', 9.99),
('T20240801', '2024-08-15', 'P2007', 'Buy', 9.99),
('T20240901', '2024-09-28', 'P2009', 'Sell', 9.99);

-- Insert Invested Values (2024 snapshots)
INSERT INTO InvestedValue (PID, Investor_PhoneNumber, DateOfInvestedValue, Amount) VALUES
-- Young investors
('P1001', '+6581001234', '2024-01-03', 40000),
('P1001', '+6581001234', '2024-02-02', 30000),
('P1001', '+6581001234', '2024-03-04', 45000),
('P1001', '+6581001234', '2024-04-05', 50000),
('P1001', '+6581001234', '2024-05-06', 32000),
('P1001', '+6581001234', '2024-06-02', 41000),
('P1001', '+6581001234', '2024-07-03', 36000),
('P1001', '+6581001234', '2024-08-04', 43000),
('P1001', '+6581001234', '2024-09-05', 39000),
('P1001', '+6581001234', '2024-10-01', 44000),
('P1001', '+6581001234', '2024-11-02', 47000),
('P1001', '+6581001234', '2024-12-03', 51000),
('P1001', '+6581001234', '2024-12-31', 55000),

('P1003', '+6583003456', '2024-01-01', 50000),
('P1003', '+6583003456', '2024-12-31', 78000),

('P1006', '+6586006789', '2024-01-01', 80000),
('P1006', '+6586006789', '2024-12-31', 125000),

('P1011', '+6581555123', '2024-01-02', 3000),
('P1011', '+6581555123', '2024-02-06', 2800),
('P1011', '+6581555123', '2024-03-03', 3100),
('P1011', '+6581555123', '2024-04-01', 2900),
('P1011', '+6581555123', '2024-05-05', 3300),
('P1011', '+6581555123', '2024-06-04', 2700),
('P1011', '+6581555123', '2024-07-02', 3000),
('P1011', '+6581555123', '2024-08-06', 2800),
('P1011', '+6581555123', '2024-09-01', 3100),
('P1011', '+6581555123', '2024-10-03', 2900),
('P1011', '+6581555123', '2024-11-04', 3300),
('P1011', '+6581555123', '2024-12-05', 2700),

('P1012', '+6581666234', '2024-01-05', 2500),
('P1012', '+6581666234', '2024-02-03', 2800),
('P1012', '+6581666234', '2024-03-06', 2600),
('P1012', '+6581666234', '2024-04-04', 2900),
('P1012', '+6581666234', '2024-05-01', 3100),
('P1012', '+6581666234', '2024-06-06', 2700),
('P1012', '+6581666234', '2024-07-05', 3000),
('P1012', '+6581666234', '2024-08-01', 2800),
('P1012', '+6581666234', '2024-09-02', 3200),
('P1012', '+6581666234', '2024-10-05', 2900),
('P1012', '+6581666234', '2024-11-03', 2700),
('P1012', '+6581666234', '2024-12-02', 3000),

-- Established investors
('P2001', '+6591001234', '2024-01-01', 280000),
('P2001', '+6591001234', '2024-12-31', 310000),
('P2003', '+6593003456', '2024-01-01', 380000),
('P2003', '+6593003456', '2024-12-31', 420000),
('P2005', '+6595005678', '2024-01-01', 450000),
('P2005', '+6595005678', '2024-12-31', 520000);

-- Insert Unrealized Gains/Losses (2024 performance)
INSERT INTO UnrealizedGainLoss (PID, Investor_PhoneNumber, DateOfUnrealizedGainLoss, Amount) VALUES
-- Young investors
('P1001', '+6581001234', '2024-12-31', 8500),
('P1003', '+6583003456', '2024-12-31', 12500),
('P1004', '+6584004567', '2024-12-31', 18000),
('P1006', '+6586006789', '2024-12-31', 22000),
('P1008', '+6588008901', '2024-12-31', 9500),

-- Established investors
('P2001', '+6591001234', '2024-12-31', 15000),
('P2003', '+6593003456', '2024-12-31', 20000),
('P2005', '+6595005678', '2024-12-31', 35000),
('P2007', '+6597007890', '2024-12-31', 18000),
('P2009', '+6599009012', '2024-12-31', 25000);

-- Insert Monthly Performance (2024)
INSERT INTO MONTHLY_PORTFOLIO_PERFORMANCE (Portfolio_ID, Month, Year, Avg_Unrealized_Gain_Loss) VALUES
-- Sample young investor portfolio
('P1001', 1, 2024, 500),
('P1001', 6, 2024, 3500),
('P1001', 12, 2024, 8500),
('P1003', 1, 2024, 800),
('P1003', 6, 2024, 6500),
('P1003', 12, 2024, 12500),

-- Sample established investor portfolio
('P2001', 1, 2024, 1200),
('P2001', 6, 2024, 8500),
('P2001', 12, 2024, 15000),
('P2003', 1, 2024, 1500),
('P2003', 6, 2024, 11000),
('P2003', 12, 2024, 20000);