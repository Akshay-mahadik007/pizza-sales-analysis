create database pizza_db;
use pizza_db;

select* from pizza_sales;

select sum(total_price)as total_revenue from pizza_sales;


show columns from pizza_sales;

set sql_safe_updates=0;

   ALTER TABLE Pizza_sales
  MODIFY COLUMN unit_price FLOAT,
     MODIFY COLUMN total_price FLOAT,
    MODIFY COLUMN pizza_name_id VARCHAR(50),
     MODIFY COLUMN pizza_size VARCHAR(50),
     MODIFY COLUMN pizza_category VARCHAR(50),
     MODIFY COLUMN pizza_ingredients VARCHAR(200),
  MODIFY COLUMN pizza_name VARCHAR(50);


UPDATE pizza_sales
SET order_date = DATE_FORMAT(
    STR_TO_DATE(TRIM(order_date), '%d-%m-%Y'),
    '%Y-%m-%d'
);


SELECT order_date,
       STR_TO_DATE(TRIM(order_date), '%d-%m-%Y') AS new_date
FROM pizza_sales
LIMIT 10;

alter table pizza_sales
modify order_date date,
modify order_time time;

select* from pizza_sales;


select sum(total_price)as total_revenue from pizza_sales;

select sum(total_price) / count(distinct order_id) as avg_order_value from pizza_sales;

select sum(quantity)as total_pizza_sold from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select sum(quantity)/count(distinct order_id )  from pizza_sales;
--
SELECT DAYNAME( order_date) AS order_day,
       COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DAYNAME( order_date);

SELECT 
    MONTHNAME(order_date) AS month_name,
    COUNT(DISTINCT order_id) as total_order
FROM
    pizza_sales
GROUP BY MONTHNAME(order_date)
order by total_order desc;



SELECT 
    pizza_category,
    SUM(total_price) * 100 / (SELECT 
            SUM(total_price)
        FROM
            pizza_sales) AS percentage
FROM
    pizza_sales
GROUP BY pizza_category;



-- note


SELECT 
    pizza_category,
    SUM(total_price) AS Total_Sales,
    SUM(total_price) * 100 /
    (
        SELECT SUM(total_price)
        FROM pizza_sales
        WHERE MONTH(order_date) = 1
    ) AS PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category;




SELECT 
    pizza_size,
    SUM(total_price) AS Total_Sales,
    SUM(total_price) * 100 /
    (
        SELECT SUM(total_price)
        FROM pizza_sales
        WHERE MONTH(order_date) = 1
    ) AS PCT
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_size;



SELECT 
    pizza_name,
    SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

SELECT 
    pizza_name,
    SUM(quantity) AS Total_Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity ASC
LIMIT 5;

















