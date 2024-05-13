SELECT *
FROM `bigquery-public-data.thelook_ecommerce.order_items` order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id;
