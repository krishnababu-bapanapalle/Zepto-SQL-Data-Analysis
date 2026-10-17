
--Top 10 Expensive Products

SELECT TOP 10
name,
discountedSellingPrice
FROM Zepto
ORDER BY discountedSellingPrice DESC;

--Cheapest Products

SELECT TOP 10
name,
discountedSellingPrice
FROM Zepto
ORDER BY discountedSellingPrice;

--Highest Discount Products

SELECT TOP 10
name,
discountPercent
FROM Zepto
ORDER BY discountPercent DESC;

--Average Selling Price by Category

SELECT
Category,
AVG(discountedSellingPrice) AveragePrice
FROM Zepto
GROUP BY Category
ORDER BY AveragePrice DESC;

--Most Expensive Category

SELECT
Category,
AVG(discountedSellingPrice) AvgPrice
FROM Zepto
GROUP BY Category
ORDER BY AvgPrice DESC;

--Category-wise Product Count

SELECT
Category,
COUNT(*) Products
FROM Zepto
GROUP BY Category
ORDER BY Products DESC;

--Out of Stock Products

SELECT *
FROM Zepto
WHERE outOfStock='True';

--In Stock Products

SELECT *
FROM Zepto
WHERE outOfStock='False';

--Average Discount by Category

SELECT
Category,
AVG(discountPercent) AvgDiscount
FROM Zepto
GROUP BY Category
ORDER BY AvgDiscount DESC;

--Top 5 Categories with Highest Discounts

SELECT TOP 5
Category,
AVG(discountPercent) AvgDiscount
FROM Zepto
GROUP BY Category
ORDER BY AvgDiscount DESC;

--Products Weighing More Than 1kg

SELECT *
FROM Zepto
WHERE weightInGms>=1000;

--Most Available Products

SELECT TOP 10
name,
availableQuantity
FROM Zepto
ORDER BY availableQuantity DESC;

--Estimated Revenue by Product

SELECT
name,
discountedSellingPrice,
availableQuantity,
discountedSellingPrice*availableQuantity AS EstimatedRevenue
FROM Zepto
ORDER BY EstimatedRevenue DESC;

--Category Revenue

SELECT
Category,
SUM(discountedSellingPrice*availableQuantity) AS EstimatedRevenue
FROM Zepto
GROUP BY Category
ORDER BY EstimatedRevenue DESC;

--Price Difference (MRP vs Selling Price)

SELECT
name,
mrp,
discountedSellingPrice,
mrp-discountedSellingPrice AS Savings
FROM Zepto
ORDER BY Savings DESC;

--Top Savings Products

SELECT TOP 10
name,
mrp-discountedSellingPrice AS Savings
FROM Zepto
ORDER BY Savings DESC;

--Products with More Than 50% Discount

SELECT *
FROM Zepto
WHERE discountPercent>50;

--Category-wise Maximum Price

SELECT
Category,
MAX(discountedSellingPrice) AS MaxPrice
FROM Zepto
GROUP BY Category;

--Category-wise Minimum Price

SELECT
Category,
MIN(discountedSellingPrice) AS MinPrice
FROM Zepto
GROUP BY Category;

--Category-wise Average Weight

SELECT
Category,
AVG(weightInGms) AvgWeight
FROM Zepto
GROUP BY Category;