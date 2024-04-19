# Sales Data Analysis Project

## Overview

This project focuses on analyzing sales data stored in a SQL database. The dataset used for this analysis, `sales_data_sample`, contains information about sales transactions including details like product lines, countries, sales amounts, and order dates. The primary aim of this project is to gain insights into the sales performance, customer behavior, and product analysis using SQL queries.

## Dataset

The `sales_data_sample` dataset consists of the following columns:

- `ORDERNUMBER`: Unique identifier for each order.
- `PRODUCTLINE`: Product category or line.
- `COUNTRY`: Country where the sale was made.
- `TERRITORY`: Sales territory.
- `DEALSIZE`: Deal size.
- `MONTH_ID`: Month of the sale.
- `YEAR_ID`: Year of the sale.
- `STATUS`: Status of the order.
- `SALES`: Sales amount.
- `CUSTOMERNAME`: Customer's name.
- `ORDERDATE`: Date of the order.

The dataset can be downloaded from [Sales Data Sample Dataset](https://github.com/NaveenJunjur/My_Portfoilio/blob/main/SQL_Projects/01-Sales%20Analysis/sales_data_sample.csv).

## SQL Queries and Analysis

### 1. Inspecting Data

- Checked the overall data and unique values for key columns like `STATUS`, `YEAR_ID`, `PRODUCTLINE`, `COUNTRY`, `DEALSIZE`, `TERRITORY`, and `MONTH_ID`.

### 2. Sales Analysis

- Grouped sales by `PRODUCTLINE`, `YEAR_ID`, and `DEALSIZE` to understand the revenue generated across different categories and years.
  
### 3. Best Sales Month Analysis

- Identified the best sales month in a specific year (`2004`) and analyzed the sales of products sold during that month.

### 4. Customer Analysis using RFM (Recency, Frequency, Monetary)

- Calculated RFM values for each customer to segment them into different categories such as `lost_customers`, `Slipping away, cannot lose`, `new customers`, `potential churners`, `active`, and `loyal`.

### 5. Product Association Analysis

- Identified which products are most often sold together by finding orders with two products and listing the product codes.

## Optimization and Insights

- Utilized common table expressions (CTEs) and temp tables for intermediate calculations to optimize query performance.
- The project offers insights into sales performance across various dimensions like product lines, years, and customer behavior.
- The RFM analysis provides valuable customer segmentation which can be used for targeted marketing and sales strategies.

## Conclusion

This sales data analysis project provides a comprehensive view of sales performance, customer behavior, and product insights. By leveraging SQL queries and RFM analysis, the project offers actionable insights to optimize sales strategies and improve business performance.
