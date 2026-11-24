
-- ==========================================
-- Project: Car Sales Analysis
-- File: 04_transmission_analysis.sql
-- Purpose: Transmission Analysis
-- ==========================================

-- Purpose: Analyse Manual and Automatic cars based on listing count and listed prices.
USE car_sales_db;

-- 1. Count car listings by transmission type
SELECT
    transmission,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY transmission
ORDER BY total_listings DESC;


-- 2. Average listed price by transmission
SELECT
    transmission,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY transmission
ORDER BY average_price DESC;


-- 3. Minimum and maximum listed price by transmission
SELECT
    transmission,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales
GROUP BY transmission;


-- 4. Total listed value by transmission
SELECT
    transmission,
    SUM(selling_price) AS total_listed_value
FROM car_sales
GROUP BY transmission
ORDER BY total_listed_value DESC;


-- 5. Transmission analysis by fuel type
SELECT
    fuel,
    transmission,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY fuel, transmission
ORDER BY fuel, average_price DESC;


-- 6. Percentage of listings by transmission
SELECT
    transmission,
    COUNT(*) AS total_listings,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM car_sales),
        2
    ) AS listing_percentage
FROM car_sales
GROUP BY transmission
ORDER BY total_listings DESC;
