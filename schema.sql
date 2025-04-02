PRAGMA foreign_keys = ON;

-- Clear existing tables if they exist
DROP TABLE IF EXISTS FUND_IN_PORTFOLIO;
DROP TABLE IF EXISTS BOND_IN_PORTFOLIO;
DROP TABLE IF EXISTS STOCK_IN_PORTFOLIO;
DROP TABLE IF EXISTS INVESTMENT_TRANSACTION;
DROP TABLE IF EXISTS BOND;
DROP TABLE IF EXISTS FUND;
DROP TABLE IF EXISTS STOCK;
DROP TABLE IF EXISTS ASSETS;
DROP TABLE IF EXISTS UnrealizedGainLoss;
DROP TABLE IF EXISTS InvestedValue;
DROP TABLE IF EXISTS PORTFOLIO;
DROP TABLE IF EXISTS FINANCIAL_GOAL;
DROP TABLE IF EXISTS RISK_TOLERANCE;
DROP TABLE IF EXISTS INVESTOR;

-- INVESTOR table
CREATE TABLE IF NOT EXISTS INVESTOR (
    Phone TEXT PRIMARY KEY,
    Name TEXT NOT NULL,
    Gender TEXT,
    DateOfBirth DATE,
    AnnualIncome REAL,
    Company TEXT,
    Amount REAL,
    Timeline INTEGER
);

-- RISK_TOLERANCE table
CREATE TABLE IF NOT EXISTS RISK_TOLERANCE (
    Investor_PhoneNumber TEXT,
    RiskLevel TEXT,
    Answers TEXT,
    PRIMARY KEY (Investor_PhoneNumber, RiskLevel),
    FOREIGN KEY (Investor_PhoneNumber) REFERENCES INVESTOR(Phone) ON DELETE CASCADE
);

-- FINANCIAL_GOAL table
CREATE TABLE IF NOT EXISTS FINANCIAL_GOAL (
    Investor_Phone TEXT,
    Goal TEXT,
    Amount REAL,
    Timeline INTEGER,
    PRIMARY KEY (Investor_Phone, Goal),
    FOREIGN KEY (Investor_Phone) REFERENCES INVESTOR(Phone) ON DELETE CASCADE
);

-- PORTFOLIO table 
CREATE TABLE IF NOT EXISTS PORTFOLIO (
    PID TEXT,
    Investor_PhoneNumber TEXT,
    InvestedValueDate DATE,
    UnrealizedGainLossDate DATE,
    Fee REAL,
    MarketValue REAL,
    InceptionDate DATE,
    AnnualizedReturn REAL,
    PRIMARY KEY (PID, Investor_PhoneNumber),
    FOREIGN KEY (Investor_PhoneNumber) REFERENCES INVESTOR(Phone) ON DELETE CASCADE
);

-- InvestedValue table
CREATE TABLE IF NOT EXISTS InvestedValue (
    PID TEXT,
    Investor_PhoneNumber TEXT,
    DateOfInvestedValue DATE,
    Amount REAL,
    PRIMARY KEY (PID, Investor_PhoneNumber, DateOfInvestedValue),
    FOREIGN KEY (PID, Investor_PhoneNumber) REFERENCES PORTFOLIO(PID, Investor_PhoneNumber) ON DELETE CASCADE
);

-- UnrealizedGainLoss table
CREATE TABLE IF NOT EXISTS UnrealizedGainLoss (
    PID TEXT,
    Investor_PhoneNumber TEXT,
    DateOfUnrealizedGainLoss DATE,
    Amount REAL,
    PRIMARY KEY (PID, Investor_PhoneNumber, DateOfUnrealizedGainLoss),
    FOREIGN KEY (PID, Investor_PhoneNumber) REFERENCES PORTFOLIO(PID, Investor_PhoneNumber) ON DELETE CASCADE
);

-- ASSETS table
CREATE TABLE IF NOT EXISTS ASSETS (
    ASSETID TEXT PRIMARY KEY,
    Name TEXT,
    Price REAL
);

-- STOCK table
CREATE TABLE IF NOT EXISTS STOCK (
    ASSETID TEXT PRIMARY KEY,
    P_E_Ratio REAL,
    EPS REAL,
    EBITDA REAL,
    FOREIGN KEY (ASSETID) REFERENCES ASSETS(ASSETID) ON DELETE CASCADE
);

-- FUND table
CREATE TABLE IF NOT EXISTS FUND (
    ASSETID TEXT PRIMARY KEY,
    ExpenseRatio REAL,
    DividendYield REAL,
    ID TEXT,
    FOREIGN KEY (ASSETID) REFERENCES ASSETS(ASSETID) ON DELETE CASCADE
);

-- BOND table
CREATE TABLE IF NOT EXISTS BOND (
    ASSETID TEXT PRIMARY KEY,
    ExpenseRatio REAL,
    DividendYield REAL,
    FOREIGN KEY (ASSETID) REFERENCES ASSETS(ASSETID) ON DELETE CASCADE
);

-- INVESTMENT_TRANSACTION table (renamed from TRANSACTION)
CREATE TABLE IF NOT EXISTS INVESTMENT_TRANSACTION (
    ID TEXT,
    Date DATE,
    PID TEXT,
    Type TEXT,
    Fee REAL,
    PRIMARY KEY (ID, Date),
    FOREIGN KEY (PID) REFERENCES PORTFOLIO(PID) ON DELETE CASCADE
);

-- STOCK_IN_PORTFOLIO table
CREATE TABLE IF NOT EXISTS STOCK_IN_PORTFOLIO (
    StockID TEXT,
    PID TEXT,
    StartDate DATE,
    AllocationRatio REAL,
    PostTradeCO REAL,
    PRIMARY KEY (StockID, PID),
    FOREIGN KEY (StockID) REFERENCES STOCK(ASSETID) ON DELETE CASCADE,
    FOREIGN KEY (PID) REFERENCES PORTFOLIO(PID) ON DELETE CASCADE
);

-- BOND_IN_PORTFOLIO table
CREATE TABLE IF NOT EXISTS BOND_IN_PORTFOLIO (
    BondID TEXT,
    PID TEXT,
    StartDate DATE,
    AllocationRatio REAL,
    PostTradeCO REAL,
    PRIMARY KEY (BondID, PID),
    FOREIGN KEY (BondID) REFERENCES BOND(ASSETID) ON DELETE CASCADE,
    FOREIGN KEY (PID) REFERENCES PORTFOLIO(PID) ON DELETE CASCADE
);

-- FUND_IN_PORTFOLIO table
CREATE TABLE IF NOT EXISTS FUND_IN_PORTFOLIO (
    FundID TEXT,
    PID TEXT,
    StartDate DATE,
    AllocationRatio REAL,
    PostTradeCO REAL,
    PRIMARY KEY (FundID, PID),
    FOREIGN KEY (FundID) REFERENCES FUND(ASSETID) ON DELETE CASCADE,
    FOREIGN KEY (PID) REFERENCES PORTFOLIO(PID) ON DELETE CASCADE
);

-- MONTHLY_PORTFOLIO_PERFORMANCE table
CREATE TABLE IF NOT EXISTS MONTHLY_PORTFOLIO_PERFORMANCE (
    Portfolio_ID TEXT,
    Month INTEGER,
    Year INTEGER,
    Avg_Unrealized_Gain_Loss REAL,
    PRIMARY KEY (Portfolio_ID, Month, Year),
    FOREIGN KEY (Portfolio_ID) REFERENCES PORTFOLIO(PID) ON DELETE CASCADE
);
