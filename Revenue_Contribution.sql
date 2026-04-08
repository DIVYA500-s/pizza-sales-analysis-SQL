-- Business Question: What percentage of total revenue does each pizza category contribute?
-- Insight: Helps identify which categories generate the most revenue, supporting pricing and marketing decisions.

SELECT pizza_types.category,
ROUND(SUM(order_details.quantity * pizzas.price), 2) AS category_revenue,
ROUND(
    SUM(order_details.quantity * pizzas.price) * 100.0 /
    (SELECT SUM(order_details.quantity * pizzas.price)
     FROM order_details
     JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id),
2) AS revenue_percentage
FROM pizza_types
JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue_percentage DESC;

-- Expected Outcome:
-- Each category's contribution (%) to total revenue
