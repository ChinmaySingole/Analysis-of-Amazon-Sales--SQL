-- List all products with a discounted price below ₹500.

SELECT 
    product_id, product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price < 500;
 
SELECT 
    *
FROM
    mytable
 
    -- Find products with a discount percentage of 50% or more.

SELECT 
    product_id, product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage >= 0.50;
 
  -- Retrieve all products where the name contains the word "Cable."

SELECT 
    product_id, product_name
FROM
    mytable
WHERE
    product_name LIKE '%cable%';
 
    
-- Display the difference between the average of the actual price and the discounted price for each category.

SELECT 
    category,
    AVG(actual_price) - AVG(discounted_price) AS price_difference
FROM
    mytable
GROUP BY category;
 
    -- Query reviews that mention "fast charging" in their content.
 
SELECT 
    review_content
FROM
    mytable
WHERE
    review_content LIKE '%fast charging%';
 
    -- Identify products with a discount percentage between 20% and 40%.

SELECT 
    product_id, product_name, discount_percentage
FROM
    mytable
WHERE
    discount_percentage BETWEEN 0.20 AND 0.40;
 
    -- Find products that have an actual price above ₹1,000 and are rated 4 stars or above.

SELECT 
    product_id, product_name, actual_price, rating
FROM
    mytable
WHERE
    actual_price > 1000 AND rating >= 4;
 
    -- Find products where the discounted price ends with a 9

SELECT 
    product_id, product_name, discounted_price
FROM
    mytable
WHERE
    discounted_price LIKE '%9';
 
    -- Display review contents that contains words like worst, waste, poor, or not good.

SELECT 
    review_content
FROM
    mytable
WHERE
    review_content LIKE '%worst%,'
        OR review_content LIKE '%waste%'
        OR review_content LIKE '%poor%'
        OR review_content LIKE '%not good%';
 
        -- List all products where the category includes "Accessories."

SELECT 
    product_id, product_name, category
FROM
    mytable
WHERE
    category LIKE '%Accessories%';