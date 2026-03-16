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
