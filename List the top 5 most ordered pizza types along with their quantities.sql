-- List the top 5 most ordered pizza types along with their quantities

SELECT 
    pizza_types.name, SUM(orders_details.quantity) AS frequency
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizza_types.name
ORDER BY frequency DESC
LIMIT 5;
