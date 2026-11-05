# Capstone 1 - EmporiUm Sales Analysis 

Year Up United - Data Analytics Training Academy 

Week 4 Capstone: SQL, Excel, and Data Storytelling 

Analyst: Ronise Drakes 

Date: November 5, 2026 

Assigned Territory: Colorado (West Region) 

Reporting Period: January 1, 2022 - December 31, 2025 

# Project Overview 

This project analyzes sales data for EmporiUm, a fictional bookstore business. I used SQL to answer six business questions and Excel to visualize the results. The analysis focuses on in-store sales at 18 Colorado locations. Online sales are excluded. 

# Tools 

MySQL Server 8.4.13 

MySQL Workbench 26.10.0 

Microsoft Excel 

Microsoft PowerPoint 

Git Bash and GitHub 

# Setup and Data Exploration 

Created and cloned the Capstone_1 GitHub repository. 

Installed and configured MySQL Server and Workbench. 

Imported the sample_sales database and verified eight tables. 

Confirmed 335,129 store-sales records and 125,565 online-sales records in the database. 

Explored table relationships using an entity relationship diagram (ERD). 

# Completed SQL Analysis 

Calculated total Colorado in-store revenue and the reporting dates. 

Calculated monthly Colorado revenue for 2022 through 2025. 

Compared Colorado revenue with West Region in-store revenue. 

Analyzed sales-record counts and average sale amounts by product category and month. 

Ranked all 18 Colorado stores by total revenue. 

Recommended stores to prioritize using Q4 2025 performance. 

# Key Findings 

Total Colorado in-store revenue: $6,412,632.22. 

Colorado is the only physical-store state in the West Region in this dataset, so its in-store revenue equals the regional in-store total. 

Highest revenue month: October 2025 ($330,762.82). 

Lowest revenue month: November 2022 ($76,920.06). 

Revenue increased 68.66% from September to October 2025. 

Technology & Accessories had the highest average sale amount ($464.42) and the most sales records (9,806). 

The top three stores for 2022-2025 were Denver ($917,471.53), Greeley ($640,368.11), and Englewood ($344,647.48). 

In Q4 2025, Denver generated $111,875.48 and Greeley generated $68,447.67. 

** Recommendation: Prioritize Denver first and Greeley second for next-quarter sales attention. Additional information on costs, profitability, and customer demand would help strengthen this recommendation. 

# Excel Visualizations 
Question 2: Monthly revenue line chart. 
Question 4: Product-category average sale amount bar chart. A summary query was used for the chart because the original monthly query returned many rows. 
Question 5: Store revenue ranking PivotTable and PivotChart. 

# Project Files 

Drakes_sales_analysis.sql - Six required SQL questions and recommendation. 

Drakes_investigation_notes.sql - Additional investigation and summary queries. *

Drakes_territory_chart.xlsx - Excel analysis and charts. 

Drakes_Capstone1_Colorado_Sales_Analysis_Submission.pptx - Ten-slide presentation with speaker notes. 

README.md - Project overview and findings. 

Video Walkthrough 

Ten-minute recorded walkthrough: Link to be added after recording. 
