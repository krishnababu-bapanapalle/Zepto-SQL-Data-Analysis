
--Find Duplicate Products

SELECT
name,
COUNT(*) DuplicateCount
FROM Zepto
GROUP BY name
HAVING COUNT(*)>1;

--Find Missing Values

SELECT *
FROM Zepto
WHERE
Category IS NULL
OR name IS NULL
OR mrp IS NULL
OR discountedSellingPrice IS NULL;

--Remove Leading/Trailing Spaces

UPDATE Zepto
SET
Category=LTRIM(RTRIM(Category)),
name=LTRIM(RTRIM(name));

--Find Negative Prices

SELECT *
FROM Zepto
WHERE discountedSellingPrice<0
OR mrp<0;

--Find Zero Quantity

SELECT *
FROM Zepto
WHERE quantity=0;

--Find Invalid Discounts
 
SELECT *
FROM Zepto
WHERE discountPercent<0
OR discountPercent>100;

--Delete Duplicate Rows

WITH CTE AS
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY name ORDER BY name) rn
FROM Zepto
)

DELETE
FROM CTE
WHERE rn>1;