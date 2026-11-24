
-- ==========================================
-- Project: Car Sales Analysis
-- File: 02_data_quality_checks.sql
-- Purpose: Data Quality Checks
-- ==========================================

-- Purpose: Check the quality, completeness and consistency of the imported car sales data.

USE car_sales_db;

-- 1. Check total number of records
SELECT COUNT(*) AS total_records
FROM car_sales;


-- 2. Check duplicate car records
SELECT
    name,
    year,
    selling_price,
    km_driven,
    COUNT(*) AS duplicate_count
FROM car_sales
GROUP BY
    name,
    year,
    selling_price,
    km_driven
HAVING COUNT(*) > 1;


-- 3. Check missing values in important columns
SELECT
    SUM(name IS NULL OR TRIM(name) = '') AS missing_names,
    SUM(year IS NULL) AS missing_years,
    SUM(selling_price IS NULL) AS missing_prices,
    SUM(km_driven IS NULL) AS missing_km_driven,
    SUM(fuel IS NULL OR TRIM(fuel) = '') AS missing_fuel,
    SUM(transmission IS NULL OR TRIM(transmission) = '') AS missing_transmission
FROM car_sales;


-- 4. Check missing vehicle specifications
SELECT
    SUM(mileage IS NULL OR TRIM(mileage) = '') AS missing_mileage,
    SUM(engine IS NULL OR TRIM(engine) = '') AS missing_engine,
    SUM(max_power IS NULL OR TRIM(max_power) = '') AS missing_max_power,
    SUM(torque IS NULL OR TRIM(torque) = '') AS missing_torque,
    SUM(seats IS NULL) AS missing_seats
FROM car_sales;


-- 5. Check minimum and maximum selling price
SELECT
    MIN(selling_price) AS minimum_price,
    MAX(selling_price) AS maximum_price
FROM car_sales;


-- 6. Check manufacturing year range
SELECT
    MIN(year) AS oldest_manufacturing_year,
    MAX(year) AS newest_manufacturing_year
FROM car_sales;


-- 7. Check distinct car names
SELECT
    COUNT(DISTINCT name) AS distinct_car_names
FROM car_sales;


-- 8. Check distinct fuel types
SELECT DISTINCT fuel
FROM car_sales;


-- 9. Check distinct transmission types
SELECT DISTINCT transmission
FROM car_sales;
