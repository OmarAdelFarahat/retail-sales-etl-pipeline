CREATE DATABASE RetailDW

USE RetailDW;
GO

-- Creating Dim Tables
-- DimCustomer

CREATE TABLE DimCustomer
(
    CustomerKey INT PRIMARY KEY,
    Customer_type VARCHAR(50),
    Gender VARCHAR(10)
);

-- DimStore
CREATE TABLE DimStore
(
    StoreKey INT PRIMARY KEY,
    Branch VARCHAR(50),
    City VARCHAR(50)
);

-- DimPayment
CREATE TABLE DimPayment
(
    PaymentKey INT PRIMARY KEY,
    Payment VARCHAR(50)
);

-- DimProduct
CREATE TABLE DimProduct
(
    ProductKey INT PRIMARY KEY,
    Product_line VARCHAR(50),
    Unit_price DECIMAL(10,2)
);

-- DimDate
CREATE TABLE DimDate
(
    DateKey INT PRIMARY KEY,
    Date DATE,
    Year INT,
    Month INT,
    Day INT,
    DayName VARCHAR(20)
);

-- Creating Fact Table

CREATE TABLE FactSales
(
    Invoice_ID VARCHAR(20),
    DateKey INT,
    CustomerKey INT,
    ProductKey INT,
    StoreKey INT,
    PaymentKey INT,
    Quantity INT,
    Unit_price DECIMAL(10,2),
    [Tax_5%] DECIMAL(10,2),
    Sales DECIMAL(10,2),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(5,2),
    gross_income DECIMAL(10,2),
    Rating FLOAT,

    FOREIGN KEY (CustomerKey) REFERENCES DimCustomer(CustomerKey),
    FOREIGN KEY (ProductKey) REFERENCES DimProduct(ProductKey),
    FOREIGN KEY (StoreKey) REFERENCES DimStore(StoreKey),
    FOREIGN KEY (PaymentKey) REFERENCES DimPayment(PaymentKey),
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey)
);