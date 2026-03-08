USE RetailDW;
GO

CREATE OR ALTER VIEW vw_SalesAnalysis
AS
SELECT
d.Year,
d.Month,
p.Product_line,
s.City,
SUM(f.Sales) Revenue,
SUM(f.Quantity) Quantity
FROM FactSales f
JOIN DimDate d ON f.DateKey = d.DateKey
JOIN DimProduct p ON f.ProductKey = p.ProductKey
JOIN DimStore s ON f.StoreKey = s.StoreKey
GROUP BY
d.Year,
d.Month,
p.Product_line,
s.City;

CREATE OR ALTER VIEW vw_ProductPerformance
AS
SELECT
p.Product_line,
SUM(f.Sales) Revenue,
SUM(f.Quantity) UnitsSold,
AVG(f.Rating) AvgRating
FROM FactSales f
JOIN DimProduct p
ON f.ProductKey = p.ProductKey
GROUP BY p.Product_line