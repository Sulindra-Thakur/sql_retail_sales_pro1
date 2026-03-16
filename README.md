# Retail Sales Analysis SQL Project

## Project Overview

- **Project Title:** Retail Sales Analysis
- **Level:** Beginner
- **Database:** `Retail_sale`

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involve setting up a retail_sales databases, performing exploratory data analysis(EDA), and answering specific business questions through SQL queries. This projrct is ideal for thos who are starting their journey in data analysis and want to build a solid foundations in SQL. 

## Objectives
1. **set up retail_sales database:** Create and populate a retail_sales database with provided sales data.
2. **Data Cleaning:** Identify and remove any records with missing or null value.
3. **Exploratory Data Analysis (EDA):** Perform basic exploratory data analysis to understand the dataset.
4. **Business Analysis:** Use SQL to answer specific questions and derive insights from the sales data.

## Project Structure

### 1. Database Setup
- **Database Creation:** The project starts by creating a database named `Retail_sale`.
- **Table Creation:** A table named `retail_sale` is created to store the sale data. The table structure includes column for transaction ID, sale data, sale time, customer ID, gender, product category, quantity sold, price per unit, cost of good sold (COGS), and total sale amount.

```sql
create database Retail_sale;
use retail_sale; 

create table retail_sale(
	transactions_id int primary key,
    sale_date date,
    sale_time time,
    customer_id int,
    gender enum("Male", "Female"),
    age int,
    category varchar(100),
    quantity int,
    price_per_unit decimal(10,2),
    cogs decimal(10,2),
    total_sale decimal(10,2)
        
);
```

### 2. Data Exploration & Cleaning
- **Record Count:** Determine the total number of record in the dataset.
- **Customer Count:** Find out how many unique customer are in the dataset.
- **Null Value Checks:** Check for any null values in the dataset and delete records with missing data.

```sql
select count(*) from retail_sale;
select count(distinct customer_id) from retail_sale;
select distinct category from retail_sale;

SELECT *
FROM retail_sale
WHERE sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

DELETE FROM retail_sale
WHERE 
   transactions_id is null 
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
```

### 3. Data Analysis & Findings

The following SQL queries were developed to answer specific business questions.

Q.1 write a sql query to retrive all column for sale made on '2022-11-05'
Q.2 write a SQL query to retrive all transactions where the category is 'Clothing' and the quantity sold 4
is more than 4 in the month of nov-2022.
Q.3 write a sql query to calculate the total sales(total_sale) for each category.
Q.4 Write a SQL query to find the average age of cutomer who purchased item from the beauty category.
Q.5 write a SQl query to find all transactions where the total_sale is greater then 1000.
Q.6 write a SQl query to find the total number of transactions(transaction_id) made by each gender in each category.
Q.7 write a SQL query to calculate the average sale for each month, find out best selling month in each year.
Q.8 write  a SQl query to find the top 5 customer based on the highest total sale
Q.9 write a SQL query to find the number of unique customer who purchased item from each category.
Q. 10 write a SQL query to create each shift and number of order(example morning <=12, aftenoon between 12 & 17, evening greater then 17).

## Findings
- **Customer Demographices:** The dataset includes customers from various age groups, with sales distributed across different category such as Clothing and Beauty.
- **High-value Transactions:** Several transactions had a total sale amount greater then 1000, indicating premium purchases.
- **Customer Insights:** The analysis indentifies the top-spending customers and the most popular product categories.

## Reports 
- **Sales Summary:** A detailed report summarizing total sales, customer demographics, and category performance.
- **Trends Anlaysis:** Insights into sales trends across different months and shifts.
- **Customer Insights:** Reports on top customers and unique customer count per category

## Conclusion

This project serves as a comprehensive introduction to SQL for data analysis, covering database setup, data cleaning, exploratory data analysis, and business-driven SQL queries. The finding from this project can help drive business decisions by understanding sales patterns, customer behavior, and product performance



