SELECT product_id, category, count(order_items.id) as amount_sold
FROM `bigquery-public-data.thelook_ecommerce.order_items` as order_items
JOIN `bigquery-public-data.thelook_ecommerce.products` as products
ON order_items.product_id=products.id
GROUP BY product_id, category
ORDER BY amount_sold DESC
LIMIT 10;

-- Fashion Hoodies & Sweatshirts, with 19 (?) pieces?
