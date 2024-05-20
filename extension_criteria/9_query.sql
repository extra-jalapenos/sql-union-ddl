SELECT category, product_id,
AVG(DATETIME_DIFF(delivered_at, shipped_at, MINUTE)) AS avg_delivery_time,
COUNT(product_id) AS times_ordered
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
GROUP BY product_id, category
HAVING avg_delivery_time > 0 AND times_ordered >= 5
ORDER BY avg_delivery_time DESC
LIMIT 10
