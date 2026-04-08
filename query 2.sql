-- Business Question: What is the total revenue generated from pizza sales?
-- Insight: Helps measure overall business performance and track revenue growth.

SELECT ROUND(SUM(quantity * price), 2) AS total_revenue
FROM order_details
LEFT JOIN pizzas
ON pizzas.pizza_id = order_details.pizza_id;

--Total Revenue  
  817860.05
