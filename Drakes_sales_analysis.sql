-- Capstone 1: EmporiUm Sales Analysis 
-- Territory: Colorado 
-- Region: West 
-- Sales Channel: In-Store 



-- QUESTION 1: Total Revenue and Date Range 

SELECT SUM(Sale_Amount) AS Total_Revenue, 
       MIN(Transaction_Date) As Start_Date, 
       MAX(Transaction_Date) AS End_Date
FROM store_sales JOIN store_locations
       ON Store_ID = StoreId
WHERE State = 'Colorado';



-- Question 2: Revenue by Year and Month

SELECT YEAR(Transaction_Date) AS Sales_Year, 
       MONTH(Transaction_Date) AS Sales_Month,
       SUM(Sale_Amount) AS Total_Revenue
FROM store_sales JOIN store_locations
       ON Store_ID = StoreId
WHERE State = 'Colorado'
GROUP BY Sales_Year, Sales_Month
ORDER BY Sales_Year, Sales_Month;



-- QUESTION 3: Comparison for Territory vs. Region Revenue
-- NOTE: Colorado is the only physical-store state in the West Region and accounts for 100% of sales. The other input that came up was Online Sales. 
-- Colorado's in-store revenue equals the West Region's total in-store revenue. 
-- Online sales are excluded in my query.

-- Colorado Revenue 
SELECT SUM(SS.Sale_Amount) AS Colorado_Revenue 
FROM store_sales AS SS 
JOIN store_locations AS SL 
    ON SS.Store_ID = SL.StoreId 
WHERE SL.State = 'Colorado'; 


-- West Region Revenue 
SELECT SUM(SS.Sale_Amount) AS West_Region_Revenue 
FROM store_sales AS SS 
JOIN store_locations AS SL 
    ON SS.Store_ID = SL.StoreId 
WHERE SL.State IN ( 
    SELECT State 
    FROM sample_sales.management 
    WHERE Region = 'West');






-- Question 4: Monthly Transactions and Average Transaction Amount by Product Category for sales territory.

DESCRIBE products;
DESCRIBE inventory_categories;
DESCRIBE store_locations;
DESCRIBE store_sales;

SELECT YEAR(Transaction_Date) AS Transaction_Year,
       Month(Transaction_Date) AS Transaction_Month,
       IC.category AS Product_category,
       AVG(Sale_Amount) AS Avg_Transaction,
       COUNT(*) AS Num_Transactions
FROM products AS P JOIN store_sales AS SS
        ON SS.Prod_Num = P.ProdNum 
     JOIN store_locations AS SL
        ON SS.Store_ID = SL.StoreId
     JOIN inventory_categories AS IC
        ON P.Categoryid = IC.Categoryid
WHERE SL.State = 'Colorado'
GROUP BY Transaction_Year, Transaction_Month, Product_category;  




-- QUESTION 5: Store Performance Rankings for in-store sales.

SELECT
      SL.StoreLocation,
      SL.StoreId,
      SUM(SS.Sale_Amount) AS Sales_Performance
FROM store_sales AS SS 
JOIN store_locations AS SL
       ON SS.Store_ID = SL.StoreId
WHERE SL.State = 'Colorado'
GROUP BY SL.StoreId, SL.StoreLocation
ORDER BY Sales_Performance DESC;
 

-- Reccomendation for where to focus our sales attention in the next quarter.

-- Based on my analysis of Q4 2025, Denver and Greeley were the highest performing Colorado store locations.
-- Denver generated $111,875.48 in sales revenue, approximately 63% more than Greeley, the second-highest performing location, which generated $68,447.67. 
-- My reccomendation is to focus next quarter's sales attention on Denver first and Greeley second based on their sales performace in Q4 2025. 


-- Colorado Store Performance in Q4 2025. 

SELECT 
    YEAR(SS.Transaction_Date) AS Transaction_Year, 
    QUARTER(SS.Transaction_Date) AS Transaction_Quarter, 
    SL.StoreLocation, 
    SL.StoreId, 
    SUM(SS.Sale_Amount) AS Sales_Performance 
FROM store_sales AS SS 
JOIN store_locations AS SL 
    ON SS.Store_ID = SL.StoreId 
WHERE SL.State = 'Colorado' 
    AND YEAR(SS.Transaction_Date) = 2025 
    AND QUARTER(SS.Transaction_Date) = 4 
GROUP BY Transaction_Year, 
         Transaction_Quarter, 
         SL.StoreId, 
         SL.StoreLocation 
ORDER BY Sales_Performance DESC; 
    
