-- Business Question: What is the total quantity of pizzas ordered by category?
-- Insight: Helps identify which pizza categories are most popular, supporting inventory planning and targeted marketing strategies.

SELECT pizza_types.category,
SUM(order_details.quantity) AS total_quantity
FROM pizza_types
JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY total_quantity DESC;

-- Expected Outcome:
-- Categories ranked by total quantity ordered (e.g., Classic, Chicken, Veg, etc.)
