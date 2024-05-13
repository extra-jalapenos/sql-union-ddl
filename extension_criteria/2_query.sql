SELECT category, count(order_id) as order_count
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
GROUP BY category
ORDER BY order_count DESC;
