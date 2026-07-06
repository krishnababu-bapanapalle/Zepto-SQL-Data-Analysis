create database zepto;


use zepto;

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'zepto';

UPDATE Zepto
SET outOfStock =
CASE
    WHEN outOfStock = '1' THEN 'True'
    WHEN outOfStock = '0' THEN 'False'
END;

1. Data Exploration
 --Total Records

SELECT COUNT(*) AS Total_Products
FROM Zepto;

--View First 10 Records

SELECT TOP 10 *
FROM Zepto;

--Check Column Information

EXEC sp_help Zepto;

--Unique Categories

SELECT DISTINCT Category
FROM Zepto;

--Number of Categories

SELECT COUNT(DISTINCT Category) AS Total_Categories
FROM Zepto;

--Products Per Category

SELECT
Category,
COUNT(*) AS TotalProducts
FROM Zepto
GROUP BY Category
ORDER BY TotalProducts DESC;

--Price Range

SELECT
MIN(discountedSellingPrice) AS MinimumPrice,
MAX(discountedSellingPrice) AS MaximumPrice,
AVG(discountedSellingPrice) AS AveragePrice
FROM Zepto;

--Stock Availability

SELECT
outOfStock,
COUNT(*) TotalProducts
FROM Zepto
GROUP BY outOfStock;

