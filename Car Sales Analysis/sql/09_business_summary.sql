
-- ==========================================
-- Project: Car Sales Analysis
-- File: 09_business_summary.sql
-- Purpose: Overall Business Summary
-- Purpose: Generate an overall business summary of the Car Sales Analysis project using SQL aggregate functions.

==========================================

USE car_sales_db;

-- 1. Overall business statistics
SELECT
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price,
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price,
    ROUND(AVG(km_driven), 2) AS average_km_driven,
    ROUND(AVG(year), 2) AS average_manufacturing_year
FROM car_sales;


-- 2. Most popular fuel type
SELECT
    fuel,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY fuel
ORDER BY total_listings DESC
LIMIT 1;


-- 3. Most popular transmission type
SELECT
    transmission,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY transmission
ORDER BY total_listings DESC
LIMIT 1;


-- 4. Most common ownership type
SELECT
    owner,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY owner
ORDER BY total_listings DESC
LIMIT 1;


-- 5. Brand with the highest number of listings
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY brand
ORDER BY total_listings DESC
LIMIT 1;


-- 6. Brand with the highest average listed price
-- Only brands with at least 10 listings
SELECT
    SUBSTRING_INDEX(name, ' ', 1) AS brand,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY brand
HAVING COUNT(*) >= 10
ORDER BY average_price DESC
LIMIT 1;


-- 7. Total listed value of all cars
SELECT
    SUM(selling_price) AS overall_listed_value
FROM car_sales;


-- 8. Overall data quality summary
SELECT
    COUNT(*) AS total_records,
    SUM(selling_price IS NULL) AS missing_prices,
    SUM(year IS NULL) AS missing_years,
    SUM(km_driven IS NULL) AS missing_km_driven,
    SUM(fuel IS NULL) AS missing_fuel,
    SUM(transmission IS NULL) AS missing_transmission
FROM car_sales;
