-- Advanced Analysis
-- Q13. Find restaurant-wise revenue from paid orders.
SELECT r.restaurant_name,
       SUM(p.amount) AS total_revenue
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
JOIN payments p
ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
AND p.payment_status = 'Paid'
GROUP BY r.restaurant_id, r.restaurant_name
ORDER BY total_revenue DESC;

-- Q14. Find the most popular food items based on quantity sold.
SELECT f.item_name,
       SUM(od.quantity) AS total_quantity
FROM food_items f
JOIN order_details od
ON f.item_id = od.item_id
JOIN orders o
ON od.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY f.item_id, f.item_name
ORDER BY total_quantity DESC;

-- Q15. Find the top 5 most expensive food items.
SELECT item_name, price 
FROM food_items 
ORDER BY price DESC 
LIMIT 5;

-- Q16. Find category-wise food item count.
SELECT category, 
	COUNT(item_id) 
FROM food_items 
GROUP BY category;

-- Q17. Calculate category-wise sales value.
SELECT f.category,
       SUM(f.price * od.quantity) AS total_sales
FROM food_items f
JOIN order_details od
ON f.item_id = od.item_id
JOIN orders o
ON od.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY f.category
ORDER BY total_sales DESC;

-- Q18. Find the most popular payment method.
SELECT payment_method,
       COUNT(*) AS total_payments
FROM payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY total_payments DESC
LIMIT 1;

-- Q19. Calculate total successful payment revenue.
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Paid';

-- Q20. Find delivery partner-wise delivered orders.
SELECT dp.partner_name,
       COUNT(o.order_id) AS total_deliveries
FROM delivery_partners dp
LEFT JOIN orders o
ON dp.partner_id = o.partner_id
AND o.order_status = 'Delivered'
GROUP BY dp.partner_id, dp.partner_name
ORDER BY total_deliveries DESC;

-- Q21. Find the delivery partner with the highest number of deliveries.
SELECT dp.partner_name,
       COUNT(o.order_id) AS total_deliveries
FROM delivery_partners dp
JOIN orders o
ON dp.partner_id = o.partner_id
WHERE o.order_status = 'Delivered'
GROUP BY dp.partner_id, dp.partner_name
ORDER BY total_deliveries DESC
LIMIT 1;

-- Q22. Create a complete food delivery report using VIEW.
SELECT * FROM food_delivery_report;

-- Q23. Find monthly revenue.
SELECT
    MONTH(o.order_date) AS month_number,
    MONTHNAME(o.order_date) AS month_name,
    SUM(p.amount) AS monthly_revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
AND p.payment_status = 'Paid'
GROUP BY MONTH(o.order_date), MONTHNAME(o.order_date)
ORDER BY month_number;


-- Q24. Calculate average order value.
SELECT ROUND(AVG(p.amount), 2) AS average_order_value
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
AND p.payment_status = 'Paid';

-- Q25. Find the second-highest revenue restaurant.
SELECT r.restaurant_name,
       SUM(p.amount) AS revenue
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
JOIN payments p
ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
AND p.payment_status = 'Paid'
GROUP BY r.restaurant_id, r.restaurant_name
ORDER BY revenue DESC
LIMIT 1 OFFSET 1;