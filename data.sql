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
('+6581555123', 'Sim Yi Xuan', 'Female', '1992-06-15', 72000, 'Google Singapore'),
('+6581666234', 'Daniel Chua', 'Male', '1990-03-11', 85000, 'NUS'),


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
INSERT INTO PORTFOLIO (PID, Investor_PhoneNumber, Fee, MarketValue, InceptionDate, AnnualizedReturn) VALUES
-- Young investors (higher risk/reward)
('P1001', '+6581001234', 0.002, 55000, '2021-01-15', 12.5),
('P1002', '+6582002345', 0.0015, 32000, '2022-03-10', 8.7),
('P1003', '+6583003456', 0.0025, 78000, '2020-11-30', 15.2),
('P1004', '+6584004567', 0.0018, 105000, '2019-07-22', 18.4),
('P1005', '+6585005678', 0.002, 42000, '2021-09-15', 9.8),
('P1006', '+6586006789', 0.0012, 125000, '2020-05-18', 14.3),
('P1007', '+6587007890', 0.0022, 36000, '2022-02-14', 7.5),
('P1008', '+6588008901', 0.0017, 95000, '2021-07-30', 11.9),
('P1009', '+6589009012', 0.0023, 62000, '2022-01-05', 10.2),
('P1010', '+6590000123', 0.0015, 155000, '2019-12-20', 16.8),
('P1011', '+6581555123', 0.0018, 85000, '2022-01-01', 10.2),
('P1012', '+6581666234', 0.0019, 102000, '2023-02-01', 11.0),

-- Established investors (more stable)
('P2001', '+6591001234', 0.001, 310000, '2018-05-20', 7.2),
('P2002', '+6592002345', 0.0012, 260000, '2017-02-15', 6.5),
('P2003', '+6593003456', 0.0008, 420000, '2016-11-30', 8.1),
('P2004', '+6594004567', 0.0015, 185000, '2019-04-05', 5.9),
('P2005', '+6595005678', 0.002, 520000, '2020-09-15', 10.3),
('P2006', '+6596006789', 0.0011, 225000, '2018-08-22', 7.8),
('P2007', '+6597007890', 0.0009, 360000, '2017-07-19', 6.7),
('P2008', '+6598008901', 0.0013, 285000, '2019-11-11', 5.5),
('P2009', '+6599009012', 0.0014, 470000, '2018-03-25', 9.1),
('P2010', '+6510000123', 0.001, 330000, '2020-01-10', 7.9);

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
INSERT INTO InvestedValue (PID, DateOfInvestedValue, Amount) VALUES
-- Young Investor P1001 (Tech-heavy)
('P1001', '2024-01-31', 42000),
('P1001', '2024-02-29', 42500),
('P1001', '2024-03-31', 43500),
('P1001', '2024-04-30', 45000),
('P1001', '2024-05-31', 47000),
('P1001', '2024-06-30', 48500),
('P1001', '2024-07-31', 50000),
('P1001', '2024-08-31', 51500),
('P1001', '2024-09-30', 52500),
('P1001', '2024-10-31', 53500),
('P1001', '2024-11-30', 54000),
('P1001', '2024-12-31', 55000),

-- Young Investor P1003 (Growth)
('P1003', '2024-01-31', 52000),
('P1003', '2024-02-29', 53000),
('P1003', '2024-03-31', 55000),
('P1003', '2024-04-30', 58000),
('P1003', '2024-05-31', 61000),
('P1003', '2024-06-30', 65000),
('P1003', '2024-07-31', 69000),
('P1003', '2024-08-31', 72000),
('P1003', '2024-09-30', 74000),
('P1003', '2024-10-31', 75500),
('P1003', '2024-11-30', 76500),
('P1003', '2024-12-31', 78000),

-- Young Investor P1004 (Aggressive)
('P1004', '2024-01-31', 65000),
('P1004', '2024-02-29', 67000),
('P1004', '2024-03-31', 71000),
('P1004', '2024-04-30', 76000),
('P1004', '2024-05-31', 82000),
('P1004', '2024-06-30', 88000),
('P1004', '2024-07-31', 93000),
('P1004', '2024-08-31', 97000),
('P1004', '2024-09-30', 100000),
('P1004', '2024-10-31', 102000),
('P1004', '2024-11-30', 103500),
('P1004', '2024-12-31', 105000),

-- Young Investor P1006 (Tech/REIT)
('P1006', '2024-01-31', 85000),
('P1006', '2024-02-29', 87000),
('P1006', '2024-03-31', 91000),
('P1006', '2024-04-30', 96000),
('P1006', '2024-05-31', 102000),
('P1006', '2024-06-30', 108000),
('P1006', '2024-07-31', 113000),
('P1006', '2024-08-31', 117000),
('P1006', '2024-09-30', 120000),
('P1006', '2024-10-31', 122000),
('P1006', '2024-11-30', 123500),
('P1006', '2024-12-31', 125000),

-- Young Investor P1008 (Dividend)
('P1008', '2024-01-31', 60000),
('P1008', '2024-02-29', 61000),
('P1008', '2024-03-31', 63000),
('P1008', '2024-04-30', 66000),
('P1008', '2024-05-31', 69000),
('P1008', '2024-06-30', 72000),
('P1008', '2024-07-31', 75000),
('P1008', '2024-08-31', 78000),
('P1008', '2024-09-30', 80000),
('P1008', '2024-10-31', 82000),
('P1008', '2024-11-30', 83500),
('P1008', '2024-12-31', 85000),

-- Established Investor P2001 (Balanced)
('P2001', '2024-01-31', 280000),
('P2001', '2024-02-29', 282000),
('P2001', '2024-03-31', 286000),
('P2001', '2024-04-30', 292000),
('P2001', '2024-05-31', 298000),
('P2001', '2024-06-30', 305000),
('P2001', '2024-07-31', 312000),
('P2001', '2024-08-31', 318000),
('P2001', '2024-09-30', 323000),
('P2001', '2024-10-31', 327000),
('P2001', '2024-11-30', 330000),
('P2001', '2024-12-31', 333000),

-- Established Investor P2003 (Dividend)
('P2003', '2024-01-31', 380000),
('P2003', '2024-02-29', 383000),
('P2003', '2024-03-31', 388000),
('P2003', '2024-04-30', 395000),
('P2003', '2024-05-31', 403000),
('P2003', '2024-06-30', 412000),
('P2003', '2024-07-31', 420000),
('P2003', '2024-08-31', 427000),
('P2003', '2024-09-30', 433000),
('P2003', '2024-10-31', 438000),
('P2003', '2024-11-30', 442000),
('P2003', '2024-12-31', 446000),

-- Established Investor P2005 (High-net-worth)
('P2005', '2024-01-31', 450000),
('P2005', '2024-02-29', 455000),
('P2005', '2024-03-31', 465000),
('P2005', '2024-04-30', 480000),
('P2005', '2024-05-31', 495000),
('P2005', '2024-06-30', 510000),
('P2005', '2024-07-31', 525000),
('P2005', '2024-08-31', 540000),
('P2005', '2024-09-30', 553000),
('P2005', '2024-10-31', 565000),
('P2005', '2024-11-30', 575000),
('P2005', '2024-12-31', 585000),

-- Established Investor P2007 (Global)
('P2007', '2024-01-31', 340000),
('P2007', '2024-02-29', 343000),
('P2007', '2024-03-31', 350000),
('P2007', '2024-04-30', 360000),
('P2007', '2024-05-31', 370000),
('P2007', '2024-06-30', 380000),
('P2007', '2024-07-31', 390000),
('P2007', '2024-08-31', 400000),
('P2007', '2024-09-30', 408000),
('P2007', '2024-10-31', 415000),
('P2007', '2024-11-30', 421000),
('P2007', '2024-12-31', 426000),

-- Established Investor P2009 (Singapore)
('P2009', '2024-01-31', 440000),
('P2009', '2024-02-29', 445000),
('P2009', '2024-03-31', 455000),
('P2009', '2024-04-30', 470000),
('P2009', '2024-05-31', 485000),
('P2009', '2024-06-30', 500000),
('P2009', '2024-07-31', 515000),
('P2009', '2024-08-31', 530000),
('P2009', '2024-09-30', 543000),
('P2009', '2024-10-31', 555000),
('P2009', '2024-11-30', 565000),
('P2009', '2024-12-31', 575000);

-- Insert Monthly Unrealized Gains/Losses for 2024 (all months)
INSERT INTO UnrealizedGainLoss (PID, DateOfUnrealizedGainLoss, Amount) VALUES
-- Young Investor P1001 (Tech-heavy portfolio)
('P1001', '2024-01-31', 1200),
('P1001', '2024-02-29', 1800),
('P1001', '2024-03-31', 2500),
('P1001', '2024-04-30', 3200),
('P1001', '2024-05-31', 4000),
('P1001', '2024-06-30', 4800),
('P1001', '2024-07-31', 5500),
('P1001', '2024-08-31', 6300),
('P1001', '2024-09-30', 7000),
('P1001', '2024-10-31', 7800),
('P1001', '2024-11-30', 8200),
('P1001', '2024-12-31', 8500),

-- Young Investor P1003 (Growth portfolio)
('P1003', '2024-01-31', 2000),
('P1003', '2024-02-29', 2800),
('P1003', '2024-03-31', 3500),
('P1003', '2024-04-30', 4200),
('P1003', '2024-05-31', 5000),
('P1003', '2024-06-30', 6500),
('P1003', '2024-07-31', 8000),
('P1003', '2024-08-31', 9500),
('P1003', '2024-09-30', 10500),
('P1003', '2024-10-31', 11500),
('P1003', '2024-11-30', 12000),
('P1003', '2024-12-31', 12500),

-- Young Investor P1004 (Aggressive growth)
('P1004', '2024-01-31', 3000),
('P1004', '2024-02-29', 4500),
('P1004', '2024-03-31', 6000),
('P1004', '2024-04-30', 7500),
('P1004', '2024-05-31', 9000),
('P1004', '2024-06-30', 10500),
('P1004', '2024-07-31', 12000),
('P1004', '2024-08-31', 13500),
('P1004', '2024-09-30', 15000),
('P1004', '2024-10-31', 16500),
('P1004', '2024-11-30', 17500),
('P1004', '2024-12-31', 18000),

-- Young Investor P1006 (Tech/REIT mix)
('P1006', '2024-01-31', 1800),
('P1006', '2024-02-29', 2500),
('P1006', '2024-03-31', 3500),
('P1006', '2024-04-30', 5000),
('P1006', '2024-05-31', 6500),
('P1006', '2024-06-30', 8500),
('P1006', '2024-07-31', 10500),
('P1006', '2024-08-31', 13000),
('P1006', '2024-09-30', 15500),
('P1006', '2024-10-31', 18000),
('P1006', '2024-11-30', 20000),
('P1006', '2024-12-31', 22000),

-- Young Investor P1008 (Dividend-focused)
('P1008', '2024-01-31', 800),
('P1008', '2024-02-29', 1200),
('P1008', '2024-03-31', 1800),
('P1008', '2024-04-30', 2500),
('P1008', '2024-05-31', 3500),
('P1008', '2024-06-30', 4500),
('P1008', '2024-07-31', 5500),
('P1008', '2024-08-31', 6500),
('P1008', '2024-09-30', 7500),
('P1008', '2024-10-31', 8200),
('P1008', '2024-11-30', 8800),
('P1008', '2024-12-31', 9500),

-- Established Investor P2001 (Balanced portfolio)
('P2001', '2024-01-31', 2500),
('P2001', '2024-02-29', 3000),
('P2001', '2024-03-31', 3500),
('P2001', '2024-04-30', 4000),
('P2001', '2024-05-31', 5000),
('P2001', '2024-06-30', 6000),
('P2001', '2024-07-31', 7500),
('P2001', '2024-08-31', 9000),
('P2001', '2024-09-30', 10500),
('P2001', '2024-10-31', 12000),
('P2001', '2024-11-30', 13500),
('P2001', '2024-12-31', 15000),

-- Established Investor P2003 (Dividend-focused)
('P2003', '2024-01-31', 3500),
('P2003', '2024-02-29', 4000),
('P2003', '2024-03-31', 4500),
('P2003', '2024-04-30', 5000),
('P2003', '2024-05-31', 6000),
('P2003', '2024-06-30', 7500),
('P2003', '2024-07-31', 9000),
('P2003', '2024-08-31', 11000),
('P2003', '2024-09-30', 13000),
('P2003', '2024-10-31', 15000),
('P2003', '2024-11-30', 17500),
('P2003', '2024-12-31', 20000),

-- Established Investor P2005 (High-net-worth)
('P2005', '2024-01-31', 5000),
('P2005', '2024-02-29', 6500),
('P2005', '2024-03-31', 8000),
('P2005', '2024-04-30', 10000),
('P2005', '2024-05-31', 12500),
('P2005', '2024-06-30', 15000),
('P2005', '2024-07-31', 18000),
('P2005', '2024-08-31', 22000),
('P2005', '2024-09-30', 26000),
('P2005', '2024-10-31', 30000),
('P2005', '2024-11-30', 33000),
('P2005', '2024-12-31', 35000),

-- Established Investor P2007 (Global diversified)
('P2007', '2024-01-31', 2000),
('P2007', '2024-02-29', 2500),
('P2007', '2024-03-31', 3500),
('P2007', '2024-04-30', 4500),
('P2007', '2024-05-31', 6000),
('P2007', '2024-06-30', 8000),
('P2007', '2024-07-31', 10000),
('P2007', '2024-08-31', 12000),
('P2007', '2024-09-30', 14000),
('P2007', '2024-10-31', 15500),
('P2007', '2024-11-30', 17000),
('P2007', '2024-12-31', 18000),

-- Established Investor P2009 (Singapore-centric)
('P2009', '2024-01-31', 3000),
('P2009', '2024-02-29', 4000),
('P2009', '2024-03-31', 5000),
('P2009', '2024-04-30', 6500),
('P2009', '2024-05-31', 8500),
('P2009', '2024-06-30', 11000),
('P2009', '2024-07-31', 13500),
('P2009', '2024-08-31', 16000),
('P2009', '2024-09-30', 18500),
('P2009', '2024-10-31', 21000),
('P2009', '2024-11-30', 23000),
('P2009', '2024-12-31', 25000);

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

-- Insert Risk Tolerance (manually assigned levels for demo)
INSERT INTO RISK_TOLERANCE (Investor_PhoneNumber, RiskLevel, Answers) VALUES
-- 20s
('+6581001234', 'Aggressive', '5,4,5,4,5'),
('+6582002345', 'Moderate', '3,3,4,3,4'),
('+6583003456', 'Aggressive', '5,5,4,5,4'),
('+6584004567', 'Aggressive', '4,5,5,4,5'),
('+6585005678', 'Moderate', '3,4,3,4,3'),
('+6586006789', 'Conservative', '2,3,2,3,2'),
('+6587007890', 'Aggressive', '5,4,5,4,5'),
('+6588008901', 'Moderate', '3,4,4,3,4'),
('+6589009012', 'Aggressive', '4,5,4,5,4'),
('+6590000123', 'Moderate', '3,4,3,4,3'),
('+6581555123', 'Moderate', '3,4,3,4,3'),
('+6581666234', 'Aggressive', '5,5,4,5,5'),

-- 30s and above
('+6591001234', 'Moderate', '3,3,3,4,3'),
('+6592002345', 'Conservative', '2,2,3,2,3'),
('+6593003456', 'Moderate', '3,4,3,4,3'),
('+6594004567', 'Conservative', '2,3,2,3,2'),
('+6595005678', 'Aggressive', '4,5,4,5,4'),
('+6596006789', 'Moderate', '3,3,4,3,4'),
('+6597007890', 'Moderate', '3,4,3,4,3'),
('+6598008901', 'Conservative', '2,3,2,3,2'),
('+6599009012', 'Moderate', '3,4,3,4,3'),
('+6510000123', 'Conservative', '2,2,3,2,3');
