USE RetailDW;
GO

CREATE INDEX IX_FactSales_DateKey
ON FactSales(DateKey);

CREATE INDEX IX_FactSales_ProductKey
ON FactSales(ProductKey);