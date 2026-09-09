

SELECT *
FROM online_retail
WHERE Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL


CREATE VIEW clean_sales AS
SELECT
  InvoiceNo,
  CustomerID,
  Country,
  InvoiceDate,
  Description,
  Quantity,
  UnitPrice,
  Quantity * UnitPrice AS TotalAmount
FROM online_retail
WHERE Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;



  select * from clean_sales


 --RFM
SELECT MAX(InvoiceDate) AS LatestDate FROM clean_sales

EXTRACT(DAY FROM MAX(joindate)-MIN(joindate)) AS DateDifference


  SELECT
  CustomerID,
  EXTRACT(DAY FROM '2011-12-09'- MAX(InvoiceDate)) AS Recency,
  COUNT(DISTINCT(InvoiceNo)) AS Frequency,
  SUM(TotalAmount) AS Monetary
FROM clean_sales
GROUP BY CustomerID;


---Monthly Sales Trend
SELECT
  to_char(InvoiceDate, 'yyyy-MM') AS SalesMonth,
  SUM(TotalAmount) AS MonthlyRevenue
FROM clean_sales
GROUP BY to_char(InvoiceDate, 'yyyy-MM')
ORDER BY SalesMonth;

---COUNTRY LEVEL SALES PERFORMANCE
SELECT
  Country,
  SUM(TotalAmount) AS TotalRevenue,
  COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM clean_sales
GROUP BY Country
ORDER BY TotalRevenue DESC;



--Top 10 Customers by Revenue

SELECT 
  CustomerID,
  COUNTRY,
  SUM(TotalAmount) AS TotalSpent,
  COUNT(DISTINCT InvoiceNo) AS Orders
FROM clean_sales
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 10
