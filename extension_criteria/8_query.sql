SELECT category, product_id, AVG(DATETIME_DIFF(delivered_at, shipped_at, MINUTE)) AS avg_delivery_time
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
WHERE delivered_at IS NOT NULL
GROUP BY product_id, category
HAVING avg_delivery_time > 0
ORDER BY avg_delivery_time ASC
LIMIT 10;
