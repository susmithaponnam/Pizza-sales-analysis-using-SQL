-- Identify the most common pizza size ordered

SELECT 
    pizzas.size, COUNT(order_details_id) AS frequency
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY size
ORDER BY frequency DESC
LIMIT 1