
-- ==========================================
-- Project: Car Sales Analysis
-- File: 07_price_analysis.sql
-- Purpose: Price Analysis
-- ==========================================


-- Purpose: Analyse car listed prices, identify price patterns and compare prices across manufacturing years.
USE car_sales_db;

-- 1. Overall price statistics
SELECT
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales;


-- 2. Price range by manufacturing year
SELECT
    year,
    COUNT(*) AS total_listings,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY year
ORDER BY year DESC;


-- 3. Top 10 most expensive car listings
SELECT
    name,
    year,
    fuel,
    transmission,
    selling_price
FROM car_sales
ORDER BY selling_price DESC
LIMIT 10;


-- 4. Top 10 least expensive car listings
SELECT
    name,
    year,
    fuel,
    transmission,
    selling_price
FROM car_sales
ORDER BY selling_price ASC
LIMIT 10;


-- 5. Average listed price by fuel type
SELECT
    fuel,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY fuel
ORDER BY average_price DESC;


-- 6. Average listed price by seller type
SELECT
    seller_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY seller_type
ORDER BY average_price DESC;


-- 7. Total listed value by fuel type
SELECT
    fuel,
    SUM(selling_price) AS total_listed_value
FROM car_sales
GROUP BY fuel
ORDER BY total_listed_value DESC;


-- 8. Price distribution by manufacturing year
SELECT
    year,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY year
ORDER BY average_price DESC;
