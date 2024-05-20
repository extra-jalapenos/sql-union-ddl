SELECT count(*), status
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
WHERE delivered_at IS NULL
GROUP BY status
LIMIT 10;

-- What do you think a null value means in such a column?
--> it has not arrived yet or the order was cancelled
