use chocolate_sales;

-- 1. Total Revenue,Profit and orders--

select count(order_id) as Total_Orders,
	round(sum(revenue),2) as Total_Revenue,
    round(sum(profit),2) as Total_profit,
    round(avg(profit_margin),2) as Average_Profit_Margin
from sales;

-- 2. Monthly Revenue trend

select 
		year(order_date) as year,
         month(order_date) as month_num,
        monthname(order_date) as month_name,
        round(sum(revenue),2) as monthly_revenue,
        round(sum(profit),2) as monthly_profit
from sales
	group by year,month_num, monthname(order_date)
    order by year, month_num;
    
-- 3. Top 10 Products by revenue --

select 
	p.product_name,
    p.brand,
    p.category,
    round(sum(revenue),2) as Total_Revenue,
    round(sum(profit),2) as Total_profit,
    round(avg(profit_margin),2) as Average_Profit_Margin
from sales s
join products p on s.product_id=p.product_id
	group by p.product_name,p.brand,p.category
    order by total_revenue desc
    limit 10;
    
-- 4. Store Performance by Country --
select
	st.country,
    st.store_type,
    count(distinct s.store_id) as Total_stores,
	round(sum(s.revenue),2) as Total_Revenue,
    round(sum(s.profit),2) as Total_profit,
    round(sum(s.revenue)/count(distinct s.store_id),2) as Revenue_per_store
from sales s 
join stores st on s.store_id=st.store_id
	group by st.country,st.store_type
    order by Total_revenue desc;

-- 5. Loyalty vs Non-loyalty Customer spending --

select
	c.loyalty_member,
    count(distinct s.customer_id) as Total_customers,
    round(sum(s.revenue),2) as Total_Revenue,
    round(avg(s.revenue),2) as avg_order_value
from sales s
join customers c on s.customer_id=c.customer_id
	group by c.loyalty_member;

-- 6. Discount impact on profit --

select 
	discount_given,
    count(order_id) as Total_orders,
    round(sum(revenue),2) as Total_Revenue,
    round(sum(profit),2) as Total_profit,
    round(avg(profit_margin),2) as Average_Profit_Margin
from sales
	group by discount_given;
    