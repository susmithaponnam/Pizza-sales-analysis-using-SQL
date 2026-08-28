-- Identify the highest-priced pizza.

SELECT 
    name, price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
WHERE
    price = (SELECT 
            MAX(price)
        FROM
            pizzas);
