-- Clear existing data
DELETE FROM MONTHLY_PORTFOLIO_PERFORMANCE;
DELETE FROM INVESTMENT_TRANSACTION;
DELETE FROM FUND_IN_PORTFOLIO;
DELETE FROM BOND_IN_PORTFOLIO;
DELETE FROM STOCK_IN_PORTFOLIO;
DELETE FROM FUND;
DELETE FROM BOND;
DELETE FROM STOCK;
DELETE FROM PORTFOLIO;
DELETE FROM FINANCIAL_GOAL;
DELETE FROM INVESTOR;

-- Insert Investors
INSERT INTO INVESTOR (Name, Gender, DoB, Phone, Annual_Income, Risk_Level, Q1_answer, Q2_answer, Q3_answer, Q4_answer, Q5_answer, Company) VALUES
('John Smith', 'Male', '1995-03-15', '555-123-4567', 85000, 'Moderate', 3, 2, 4, 3, 2, 'TechCorp'),
('Emily Johnson', 'Female', '1990-07-22', '555-234-5678', 95000, 'Aggressive', 5, 4, 5, 4, 5, 'FinanceCo'),
('Michael Brown', 'Male', '1988-11-30', '555-345-6789', 120000, 'Conservative', 2, 1, 2, 2, 1, 'TechCorp'),
('Sarah Lee', 'Female', '1998-05-10', '555-456-7890', 75000, 'Moderate', 4, 3, 4, 3, 3, 'RetailInc'),
('David Wilson', 'Male', '1993-09-25', '555-567-8901', 110000, 'Aggressive', 5, 5, 5, 4, 5, 'FinanceCo');

-- Insert Financial Goals
INSERT INTO FINANCIAL_GOAL (Investor_ID, Goal, Amount, Timeline, Creation_Date, Priority) VALUES
(1, 'Retirement Savings', 1000000, 20, '2023-01-10', 1),
(1, 'Buy a Home', 500000, 5, '2023-03-15', 2),
(2, 'Early Retirement', 2000000, 15, '2023-02-20', 1),
(3, 'College Fund', 250000, 10, '2023-01-05', 1),
(3, 'Vacation Home', 350000, 7, '2023-04-01', 2),
(4, 'Retirement Savings', 800000, 25, '2023-01-15', 1),
(5, 'Early Retirement', 1500000, 12, '2023-02-10', 1);

-- Insert Portfolios
INSERT INTO PORTFOLIO (Investor_ID, Inception_Date, Annualized_Return_2023, Annualized_Return_2024) VALUES
(1, '2020-01-15', 7.5, -2.3),
(2, '2019-05-20', 12.3, 15.7),
(3, '2021-03-10', 5.2, 4.8),
(4, '2022-06-01', 8.1, 9.5),
(5, '2020-11-15', 11.2, 13.4);

-- Insert Stocks
INSERT INTO STOCK VALUES
('S1', 'Apple Inc.', 28.5, 5.67, 0.6, 175.25),
('S2', 'Microsoft Corp.', 32.1, 7.89, 0.8, 305.42),
('S3', 'Tesla Inc.', 85.3, 2.45, 0.0, 210.75);

-- Insert Bonds
INSERT INTO BOND VALUES
('B1', 3.5, '2030-12-31', 98.75),
('B2', 4.2, '2028-06-30', 101.20),
('B3', 2.8, '2025-12-31', 99.50);

-- Insert Funds
INSERT INTO FUND VALUES
('F1', 'Vanguard S&P 500 Index', 0.04, 10.2),
('F2', 'Fidelity Bond Fund', 0.45, 4.8),
('F3', 'Tech Growth ETF', 0.65, 15.7);

-- Insert Stock Portfolio Relationships
INSERT INTO STOCK_IN_PORTFOLIO VALUES
(1, 'S1', 50000, -7500, '2020-02-01', -2500),
(1, 'S2', 30000, -4500, '2020-03-15', -1500),
(2, 'S3', 75000, 32500, '2019-07-10', 12500),
(4, 'S1', 40000, 8000, '2022-07-01', 3000),
(5, 'S2', 60000, 18000, '2020-12-01', 6000);

-- Insert Bond Portfolio Relationships
INSERT INTO BOND_IN_PORTFOLIO VALUES
(1, 'B1', 25000, -1250, '2020-04-10', -500),
(3, 'B2', 40000, 2000, '2021-04-05', 800),
(4, 'B3', 30000, 1500, '2022-07-15', 600);

-- Insert Fund Portfolio Relationships
INSERT INTO FUND_IN_PORTFOLIO VALUES
(1, 'F1', 10000, -2500, '2020-05-20', -800),
(2, 'F3', 50000, 27500, '2019-08-15', 9500),
(5, 'F1', 45000, 13500, '2021-01-10', 4500);

-- Insert Transactions (2024 monthly for dollar-cost averaging analysis)
INSERT INTO INVESTMENT_TRANSACTION VALUES
('T20240101', 2, 'Buy', 2000, 4.99, '2024-01-01', 1995.01),
('T20240201', 2, 'Buy', 2000, 4.99, '2024-02-01', 1995.01),
('T20240301', 2, 'Buy', 2000, 4.99, '2024-03-01', 1995.01),
('T20240401', 2, 'Buy', 2000, 4.99, '2024-04-01', 1995.01),
('T20240501', 2, 'Buy', 2000, 4.99, '2024-05-01', 1995.01),
('T20240601', 2, 'Buy', 2000, 4.99, '2024-06-01', 1995.01),
('T20240102', 5, 'Buy', 1500, 4.99, '2024-01-01', 1495.01),
('T20240202', 5, 'Buy', 1500, 4.99, '2024-02-01', 1495.01),
('T20240302', 5, 'Buy', 1500, 4.99, '2024-03-01', 1495.01),
('T20240402', 5, 'Buy', 1500, 4.99, '2024-04-01', 1495.01),
('T20240502', 5, 'Buy', 1500, 4.99, '2024-05-01', 1495.01),
('T20240602', 5, 'Buy', 1500, 4.99, '2024-06-01', 1495.01);

-- Insert Monthly Performance Data (2024)
INSERT INTO MONTHLY_PORTFOLIO_PERFORMANCE VALUES
(1, 1, 2024, -1200),
(1, 2, 2024, -1500),
(1, 3, 2024, -1800),
(1, 4, 2024, -2100),
(1, 5, 2024, -2400),
(2, 1, 2024, 3500),
(2, 2, 2024, 4200),
(2, 3, 2024, 4800),
(2, 4, 2024, 5200),
(2, 5, 2024, 5800),
(3, 1, 2024, 600),
(3, 2, 2024, 650),
(3, 3, 2024, 700),
(3, 4, 2024, 750),
(3, 5, 2024, 800);