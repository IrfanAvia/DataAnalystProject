-- Highest Discounted Products
SELECT TOP (10) [product_id], [product_name], [discount_percentage]
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
ORDER BY [discount_percentage] DESC;


-- Highest Rated Products
SELECT TOP (10) [product_id], [product_name], [rating], [rating_count]
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
WHERE [rating_count] > 1000
ORDER BY [rating] DESC;


-- Category with Most Products
SELECT [category], COUNT([product_id]) AS product_count
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
GROUP BY [category]
ORDER BY product_count DESC;


-- Average Product Prices by Category
SELECT [category], AVG([actual_price]) AS average_price
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
GROUP BY [category]
ORDER BY average_price DESC;


-- Product Rating Distribution
SELECT [rating], COUNT(*) AS rating_count
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
GROUP BY [rating]
ORDER BY [rating] DESC;


-- Average Rating per Category
SELECT [category], AVG([rating]) AS average_rating
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
GROUP BY [category]
ORDER BY average_rating DESC;

-- Users with Most Reviews
SELECT TOP (10) [user_id], [user_name], COUNT([review_id]) AS review_count
FROM [Amazon Store Sales].[dbo].[Amazon_Sales]
GROUP BY [user_id], [user_name]
ORDER BY review_count DESC;


