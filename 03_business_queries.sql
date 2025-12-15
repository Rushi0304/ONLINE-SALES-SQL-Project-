-- Total Revenue
SELECT SUM(p.price * od.quantity) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id;

-- Customers with more than one order
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Customers who never placed an order
SELECT customer_name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);

-- Most sold product
SELECT product_name
FROM products
WHERE product_id = (
    SELECT product_id
    FROM order_details
    GROUP BY product_id
    ORDER BY SUM(quantity) DESC
    LIMIT 1
);

-- Orders with pending payment
SELECT order_id
FROM payments
WHERE payment_status = 'Pending';
