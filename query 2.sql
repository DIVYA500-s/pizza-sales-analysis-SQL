-- Calculate the total revenue generated from pizza sales.
select  round(sum(quantity*price),2) AS total_revenue
from order_details
LEFT JOIN pizzas 
ON pizzas.pizza_id = order_details.pizza_id;
