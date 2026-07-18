CREATE DATABASE superstore;
use superstore ;

CREATE TABLE orders (
    row_id INT,
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    region VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,4),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,4)
);

select * from orders ; 
--  Monthly Revenue Trend ---------------------------------------------------------------------------
select 
     DATE_FORMAT(order_date, '%Y-%m') AS month , Round(SUM(sales) ,2) AS total_sales
from orders 
group by month 
order by month;   

-- "Kaun se 10 products ne sabse zyada revenue generate kiya?" ----------------------------------------
select product_name  , ROUND(SUM(sales),2) AS total_sales 
from orders 
group by product_name
order by total_sales DESC 
limit 10 ;

-- Category-wise Sales & Profit --- Teeno categories (Furniture, Office Supplies, Technology) mein se kaun sabse zyada profitable hai?---
select category , Round(SUM(sales),2) AS Total_sales , Round(SUM(profit),2) AS Total_profit ,
round(SUM(profit) / SUM(sales) * 100 ,2 ) AS profit_margin_pct 
from orders 
group by category 
order by profit_margin_pct  DESC ;

-- Region-wise Sales Ranking ------ Kaun sa region sabse zyada sales kar raha hai? Unhe rank karo -------
select region , Total_sales ,
Rank() over (order by Total_sales DESC ) AS Sales_rank
from (select region ,  Round(SUM(sales),2) AS Total_sales  
from orders group by region ) AS Region_sales ;

-- Customer Segment Analysis ---- Consumer, Corporate aur Home Office — kaun sa segment sabse zyada valuable hai

select segment, 
total_sales,
total_profit,
dense_rank() over (order by total_sales DESC ) AS Sales_rank,
CASE 
    WHEN ROUND(total_profit/total_sales*100, 2) >= 13 THEN 'High Value'
    WHEN ROUND(total_profit/total_sales*100, 2) >= 10 THEN 'Medium Value'
    ELSE 'Low Value'
END AS segment_label
from (
select segment , 
round(SUM(sales),2)  AS total_sales , round(SUM(profit),2) AS total_profit 
from orders 
group by segment 
order by  total_sales  DESC , total_profit DESC )
  AS segment_sales  ;

 -- Loss-making Orders -- Kaun se orders mein company ko loss hua?" — Yeh ek analyst ka important kaam hai — problematic orders identify karna!
 
 select order_id,product_name,category,sales,profit,discount from orders
 where profit < 0 
 order by profit ASC
 limit 10;
 
 -- ========================================================
 -- Total Sales
SELECT ROUND(SUM(sales), 2) FROM orders;

-- Total Profit
SELECT ROUND(SUM(profit), 2) FROM orders;

-- Total Orders
SELECT COUNT(DISTINCT order_id) FROM orders;

-- Average Discount
SELECT ROUND(AVG(discount) * 100, 2) FROM orders;









