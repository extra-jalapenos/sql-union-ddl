SELECT Count(*) As Null_Count
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
WHERE delivered_at IS NULL
LIMIT 10;
