
-- ==========================================
-- Project: Car Sales Analysis
-- File: 06_brand_analysis.sql
-- Purpose: Brand Analysis
-- ==========================================

-- Purpose: Analyse car brands based on listing count, average listed price and total listed value.

USE car_sales_db;

-- 1. Top 10 brands by number of listings
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY brand
ORDER BY total_listings DESC
LIMIT 10;


-- 2. Average listed price by brand
-- Include brands with at least 10 listings
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY brand
HAVING COUNT(*) >= 10
ORDER BY average_price DESC;


-- 3. Top 10 brands by total listed value
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(*) AS total_listings,
    SUM(selling_price) AS total_listed_value
FROM car_sales
GROUP BY brand
ORDER BY total_listed_value DESC
LIMIT 10;


-- 4. Top 10 most expensive car listings
SELECT
    name,
    year,
    fuel,
    transmission,
    selling_price
FROM car_sales
ORDER BY selling_price DESC
LIMIT 10;


-- 5. Count distinct car models by brand
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(DISTINCT name) AS distinct_car_models,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY brand
ORDER BY total_listings DESC;


-- 6. Top 10 brands by average listed price
-- Include brands with at least 10 listings
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY brand
HAVING COUNT(*) >= 10
ORDER BY average_price DESC
LIMIT 10;
