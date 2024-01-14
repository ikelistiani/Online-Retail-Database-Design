SELECT category_name, COUNT(*) as total_products
FROM product_categories
JOIN products ON product_categories.category_id = products.category_id
GROUP BY category_name
ORDER BY total_products DESC
LIMIT 1;