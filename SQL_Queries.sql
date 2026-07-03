USE SuperstoreDB;

-- Query 1 : select 
SELECT *
FROM orders;


-- Query 2 : where
SELECT *
FROM orders
WHERE State = 'California';


-- Query 3 : order by
SELECT *
FROM orders
ORDER BY Sales DESC;


-- Query 4 : GROUP BY
SELECT Category,
SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category;


-- Query 5 : Aggregate Functions
SELECT
SUM(Sales) AS TotalSales,
AVG(Sales) AS AverageSales,
COUNT(*) AS TotalOrders,
MAX(Sales) AS HighestSale,
MIN(Sales) AS LowestSale
FROM orders;


-- Query 5 : Aggregate Functions
SELECT
SUM(Sales) AS TotalSales,
AVG(Sales) AS AverageSales,
COUNT(*) AS TotalOrders,
MAX(Sales) AS HighestSale,
MIN(Sales) AS LowestSale
FROM orders;


-- Query 6 : Subquery
SELECT *
FROM orders
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM orders
);


-- Query 7 : Create View
CREATE VIEW Sales_View AS
SELECT `Customer Name`, Category, Sales
FROM orders;


-- Query 8 : Display View
SELECT *
FROM Sales_View;


-- Query 9 : Create Index
CREATE INDEX idx_category
ON orders(Category(20));


-- Query 10 : Create Managers Table
CREATE TABLE Managers (
    Region VARCHAR(50),
    ManagerName VARCHAR(50)
);


-- Query 11 : Insert Data
INSERT INTO Managers VALUES
('Central','John'),
('East','Emma'),
('South','David'),
('West','Sophia');


-- Query 12 : INNER JOIN
SELECT
o.`Order ID`,
o.`Customer Name`,
o.Region,
m.ManagerName
FROM orders o
INNER JOIN Managers m
ON o.Region = m.Region;


-- Query 13 : LEFT JOIN
SELECT
o.`Order ID`,
o.`Customer Name`,
o.Region,
m.ManagerName
FROM orders o
LEFT JOIN Managers m
ON o.Region = m.Region;