
-- ==========================================
-- Project: Car Sales Analysis
-- File: 03_fuel_analysis.sql
-- Purpose: Fuel Type Analysis
-- ==========================================

-- Purpose: Analyse car listings based on fuel type and understand their price differences.

USE car_sales_db;

-- 1. Count car listings by fuel type
SELECT
    fuel,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY fuel
ORDER BY total_listings DESC;


-- 2. Average listed price by fuel type
SELECT
    fuel,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY fuel
ORDER BY average_price DESC;


-- 3. Minimum and maximum listed price by fuel type
SELECT
    fuel,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales
GROUP BY fuel
ORDER BY maximum_price DESC;


-- 4. Total listed value by fuel type
SELECT
    fuel,
    SUM(selling_price) AS total_listed_value
FROM car_sales
GROUP BY fuel
ORDER BY total_listed_value DESC;


-- 5. Percentage of listings by fuel type
SELECT
    fuel,
    COUNT(*) AS total_listings,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM car_sales),
        2
    ) AS listing_percentage
FROM car_sales
GROUP BY fuel
ORDER BY total_listings DESC;
