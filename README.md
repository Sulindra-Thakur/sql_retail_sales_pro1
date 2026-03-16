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

Q.1. write a sql query to retrive all column for sale made on '2022-11-05'



