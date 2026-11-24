
-- ==========================================
-- Project: Car Sales Analysis
-- File: 05_ownership_analysis.sql
-- Purpose: Ownership Analysis
-- ==========================================

-- Purpose: Analyse car listings based on previous ownership and understand how ownership history relates to listed prices.

USE car_sales_db;

-- 1. Count car listings by owner type
SELECT
    owner,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY owner
ORDER BY total_listings DESC;


-- 2. Average listed price by owner type
SELECT
    owner,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY owner
ORDER BY average_price DESC;


-- 3. Minimum and maximum listed price by owner type
SELECT
    owner,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales
GROUP BY owner
ORDER BY average_price DESC;


-- 4. Total listed value by owner type
SELECT
    owner,
    SUM(selling_price) AS total_listed_value
FROM car_sales
GROUP BY owner
ORDER BY total_listed_value DESC;


-- 5. Percentage of listings by owner type
SELECT
    owner,
    COUNT(*) AS total_listings,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM car_sales),
        2
    ) AS listing_percentage
FROM car_sales
GROUP BY owner
ORDER BY total_listings DESC;





SELECT
    owner,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales
GROUP BY owner
ORDER BY maximum_price DESC;