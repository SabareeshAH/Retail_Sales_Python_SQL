-- use db command
use MYSQL_Prac;

-- fetching all records to see output
select * from df_orders_table;

-- Q1. Find the Top 10 revenue generating products
Select product_id as "Top 10 Products", sum(selling_price) as Sum from df_orders_table
group by product_id
order by Sum DESC limit 0, 10;

-- Q2. Find the Top 5 Highest Selling Products in each region
with cte as (
select region, product_id, sum(selling_price) as Sum_of_Sales from df_orders_table
group by product_id, region)
select * from (
select *, row_number() over(partition by region order by Sum_of_Sales desc) as Ranking from cte ) as A
where Ranking <= 5;

-- Q3. Find the each Month over Month growth comparison for 2022 and 2023 sales. E.g. Sales in Jan 2022 Vs Jan 2023
with common as (
select year(order_date) as Order_Year, month(order_date) as Order_Month, monthname(order_date) as Month_Name, Sum(selling_price) as Order_Sales from df_orders_table
group by Order_Year, Order_Month, Month_Name)
select Order_Month, Month_Name,
sum(case When Order_Year = 2022 then Order_sales else 0 end) as "2022_Sales",
sum(case When Order_Year = 2023 then Order_sales else 0 end) as "2023_Sales" from common
group by  Order_Month, Month_Name
order by  Order_Month;

-- Q4. In each Category which month had the highest sales
with Apple as (
select category, DATE_FORMAT(order_date, "%Y%m") as order_year_month, sum(selling_price) as Sales 
from df_orders_table
group by category, order_year_month)
select * from (
select *,
row_number() over(partition by category order by Sales DESC) as Month_Ranking
from Apple) as B
where Month_ranking = 1;

-- Q5. Which Sub-category have the highest growth by profit in 2023 comparing to 2022
with CTE_1 as (
select sub_category, year(order_date) as Order_Year, sum(selling_price) as Sales_Sum from df_orders_table
group by sub_category, Order_Year),
CTE_2 as (
select sub_category,
sum(case when Order_Year = 2022 then Sales_Sum else 0 end) as 2022_Sales,
sum(case when Order_Year = 2023 then Sales_Sum else 0 end) as 2023_Sales from CTE_1
group by sub_category)
select *, ((2023_Sales - 2022_Sales) / 2022_Sales) * 100 as Profit_Margin from CTE_2
Order by Profit_Margin DESC
limit 1;

