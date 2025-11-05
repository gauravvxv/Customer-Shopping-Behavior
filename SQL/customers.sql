--Q1. Which gender has the highest total and average spending?
select
gender,
sum(purchase_amount) as total_spending,
round(avg(purchase_amount),2) as avg_spending
from customers
group by gender
order by total_spending desc;

--Q2. Which age group has the highest number of customers?
select
age_group,
count(*) as total_customers
from 
customers
group by age_group
order by total_customers desc;

--Q3. Which age group has the highest total spending?
select
age_group,
sum(purchase_amount) as total_amount
from customers
group by age_group
order by total_amount desc;

--Q4. Which customers used a discount but still spent more than the average purchase amount?
select 
count(distinct customer_id) as customers
from customers
where discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount) from customers);

--Q5. Which product category has the highest sales, average rating, and the most customers?
select
category,
sum(purchase_amount) as total_amount,
round(avg(review_rating)::numeric,2) as average_rating,
count(distinct customer_id) as total_customers
from customers
group by category
order by total_amount desc,total_customers desc;

--Q6. Which are the top 5 products with the highest average review rating?
select item_purchased,
round(avg(review_rating)::numeric,2) as average_rating
from customers
group by item_purchased
order by avg(review_rating) desc
limit 5;


--Q7. Which location has the highest total sales (Top 5)?
select
location,
sum(purchase_amount) as total_sales
from
customers
group by location
order by total_sales desc
limit 5;


--Q8. Compare average purchase amount between all shipping.
select 
shipping_type,
round(avg(review_rating)::numeric,2) as average_amount
from customers
group by shipping_type
order by average_amount desc;

--Q9. Do subscribed customers spend more? Compare average spend and total revenue between subscription and non subscription.
select
subscription_status,
round(avg(purchase_amount),2) as average_spend,
sum(purchase_amount) as total_revenue
from customers
group by subscription_status
order by total_revenue desc;

-- Q10. Which 5 product have the highest precentage of purchases with discount applied?
select
item_purchased,
round(100.0 * sum(case when discount_applied = 'Yes' then 1 else 0 end)/ count(*),2) as discount_rate
from customers
group by item_purchased
order by discount_rate desc
limit 5;

--Q11. Segment customers into new, returning, and loyal bases on total number of previous purchases, and show the count of each segment.
with customer_type as (
select customer_id,previous_purchases,
case
  when previous_purchases = 1 then 'new'
  when previous_purchases between 2 and 10 then 'returning'
  else 'loyal'
  end as customer_segment
from customers )

select customer_segment,
count(customer_id) as total_customers
from customer_type
group by customer_segment
order by total_customers desc;

-- Q12.  What are the top 3 most purchased products within each category? 
with items_count as(
select 
category,
item_purchased,
count(customer_id) as total_orders,
row_number() over (partition by category order by count(customer_id) desc) as rn
from customers
group by category,item_purchased
)

select 
rn,
category,
item_purchased,
total_orders
from items_count
where rn <=3;

