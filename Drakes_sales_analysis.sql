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



      
