SELECT products.product_id, product_name, COUNT(products.product_id) as total_purchases
FROM order_details
JOIN products ON order_details.product_id = products.product_id
WHERE order_details.order_id IN (SELECT order_id FROM orders WHERE customer_id = 1)
GROUP BY products.product_id
ORDER BY total_purchases DESC
LIMIT 3;
