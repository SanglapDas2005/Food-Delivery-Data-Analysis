-- Basic Analysis
-- Q1. Find all customers.
SELECT * FROM customers;

-- Q2. Find all restaurants.
SELECT * FROM restaurants;

-- Q3. Find all food items whose price is greater than 200.
SELECT item_name FROM food_items WHERE price>200;

-- Q4. Find all customers from Kolkata.
SELECT  customer_name FROM customers WHERE city='Kolkata';

-- Q5. Display all food items from highest to lowest price.
SELECT item_name, price FROM food_items ORDER BY price DESC;

-- Q6. Find the total number of orders.
SELECT count(order_id) FROM orders;

-- Q7. Find the total delivered orders.
SELECT count(*) FROM orders WHERE order_status='delivered';

-- Q8. Find the total cancelled orders.
SELECT count(*) FROM orders WHERE order_status='cancelled';

-- Q9. Calculate the order cancellation percentage.
SELECT
ROUND(
    100.0 * SUM(
        CASE
            WHEN order_status = 'Cancelled' THEN 1
            ELSE 0
        END
    ) / COUNT(*), 2
) AS cancellation_percentage
FROM orders;

-- Q10. Find the number of orders placed at each restaurant.
SELECT r.restaurant_name,
 COUNT(o.order_id) AS total_orders     
FROM restaurants r
LEFT JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.restaurant_name
ORDER BY total_orders DESC;

-- Q11. Find the restaurant with the highest number of orders.
SELECT r.restaurant_name,
       COUNT(o.order_id) AS total_orders
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.restaurant_name
ORDER BY total_orders DESC
LIMIT 1;
-- Q12. Find the average restaurant rating.
SELECT AVG(rating) FROM restaurants;
