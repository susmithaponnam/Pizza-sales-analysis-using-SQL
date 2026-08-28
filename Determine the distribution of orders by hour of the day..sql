-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS Hour, COUNT(order_id) AS Order_count
FROM
    orders
GROUP BY HOUR(order_time);
