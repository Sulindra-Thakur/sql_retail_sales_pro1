-- here create database and connect to the server
-- create database Retail_sale;
-- use retail_sale; 


-- create a retail_sale table
-- create table retail_sale(
-- 	transactions_id int primary key,
--     sale_date date,
--     sale_time time,
--     customer_id int,
--     gender enum("Male", "Female"),
--     age int,
--     category varchar(100),
--     quantity int,
--     price_per_unit decimal(10,2),
--     cogs decimal(10,2),
--     total_sale decimal(10,2)
--         
-- );
-- check my data import or not
-- select *from retail_sale
-- order by transactions_id
-- limit 10;

-- cleaning the table whether there is any null or not

-- select *from retail_sale
-- where transactions_id is null;

-- SELECT *
-- FROM retail_sale
-- WHERE sale_date IS NULL
--    OR sale_time IS NULL
--    OR customer_id IS NULL
--    OR gender IS NULL
--    OR age IS NULL
--    OR category IS NULL
--    OR quantity IS NULL
--    OR price_per_unit IS NULL
--    OR cogs IS NULL
--    OR total_sale IS NULL;

-- if in the table there is any null column then we have to delete or put value on that column

-- delete from retail_sale
-- WHERE 
--    transactions_id is null 
--    OR sale_date IS NULL
--    OR sale_time IS NULL
--    OR customer_id IS NULL
--    OR gender IS NULL
--    OR age IS NULL
--    OR category IS NULL
--    OR quantity IS NULL
--    OR price_per_unit IS NULL
--    OR cogs IS NULL
--    OR total_sale IS NULL;

-- select *from retail_sale;

-- SELECT COUNT(transactions_id), COUNT(DISTINCT transactions_id)
-- FROM retail_sale;


-- DESCRIBE retail_sale;

-- SELECT COUNT(transactions_id), 
--        COUNT(DISTINCT transactions_id)
-- FROM retail_sale;
-- select * from retail_sale;


-- data exploration
-- how many sales we have?

-- select count(*) as total_sale from retail_sale;

-- how many unique customer we have?

-- select count( distinct customer_id) as total_sale from retail_sale;

-- how many unique category we have?

-- select count( distinct category) as total_category from retail_sale;
-- select distinct category as total_category from retail_sale;

-- data analyze & business key problem & answer

-- Q.1. write a sql query to retrive all column for sale made on '2022-11-05'
-- select *
-- from retail_sale
-- where sale_date = '2022-11-05';

-- Q.2. write a SQL query to retrive all transactions where the category is 'Clothing' and the quantity sold 4
-- is more than 4 in the month of nov-2022

-- select 
-- -- category,sum(quantity)
-- *
-- from retail_sale
-- where 
-- category = 'Clothing'
-- 	and 
--     date_format(sale_date, '%Y-%m') = '2022-11' 
--     and quantity >=4
-- -- group by 1;

-- -----------------------------------------


-- SELECT MIN(sale_date), MAX(sale_date)
-- FROM retail_sale;

-- SELECT COUNT(*)
-- FROM retail_sale
-- WHERE sale_date >= '2022-11-01'
-- AND sale_date < '2022-12-01';

-- SELECT category, COUNT(*)
-- FROM retail_sale
-- WHERE sale_date >= '2022-11-01'
-- AND sale_date < '2022-12-01'
-- GROUP BY category;

-- SELECT 
--     category,
--     SUM(quantity) AS total_quantity
-- FROM retail_sale
-- WHERE sale_date >= '2022-11-01'
-- AND sale_date < '2022-12-01'
-- AND category = 'Clothing'
-- GROUP BY category;

-- ------------------------------------------------------------------

-- Q.3. write a sql query to calculate the total sales(total_sale) for each category

-- select	category, sum(total_sale) as net_sale,
-- count(*) as total_orders
--  from retail_sale group by 1;

-- Q. 4 Write a SQL query to find the average age of cutomer who purchased item from the beauty category

-- select 
-- 	round(avg(age), 2) as avg_age
-- from retail_sale
-- where category = 'Beauty'

-- Q. 5 write a SQl query to find all transactions where the total_sale is greater then 1000.

-- select *from retail_sale where total_sale > 1000;

-- Q.6 write a SQl query to find the total number of transactions(transaction_id) made by each gender in each category.

-- select category, gender, count(*) as total_trans from retail_sale group by category, gender;

-- Q.7 write a SQL query to calculate the average sale for each month, find out best selling month in each year.

-- select 
-- 	year,
--     month,
--     avg_sum
-- from(
-- SELECT 
--     YEAR(sale_date) AS year,
--     MONTH(sale_date) AS month,
--     SUM(total_sale) AS total_sum,
--     AVG(total_sale) AS avg_sum,
--     RANK() OVER (
--         PARTITION BY YEAR(sale_date) 
--         ORDER BY AVG(total_sale) DESC
--     ) AS sales_rank
-- FROM retail_sale
-- GROUP BY YEAR(sale_date), MONTH(sale_date)
-- ORDER BY year, total_sum DESC
-- ) as t1
-- where sales_rank = 1;

-- Q.8 write  a SQl query to find the top 5 customer based on the highest total sale

-- select customer_id, sum(total_sale) as total_sales from retail_sale
-- group by 1
-- order by 2 desc
-- limit 5;


-- Q.9 write a SQL query to find the number of unique customer who purchased item from each category.

-- select category, count(  distinct customer_id) as cnt_unique_cs from retail_sale
-- group by category;

-- Q. 10 write a SQL query to create each shift and number of order(example morning <=12, aftenoon between 12 & 17, evening greater then 17)

-- select *,
-- 	case
-- 		when extract(hour from sale_time) < 12 then 'morning'
-- 		when extract(hour from sale_time) between  12 and 17 then 'afternoon'
-- 	else 'evening'
--     end as shift
-- from retail_sale

-- with hourly_sale
-- as 
-- (
-- select *,
-- 	case
-- 		when extract(hour from sale_time) < 12 then 'morning'
-- 		when extract(hour from sale_time) between  12 and 17 then 'afternoon'
-- 	else 'evening'
--     end as shift
-- from retail_sale
-- )
-- select 
-- shift,
-- count(*) as total_orders
-- from hourly_sale
-- group by shift

-- select * from retail_sale;




    










