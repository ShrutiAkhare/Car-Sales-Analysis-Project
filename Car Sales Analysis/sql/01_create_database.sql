
-- ==========================================
-- Project: Car Sales Analysis
-- File: 01_create_database.sql
-- Purpose: Database and table creation
-- ==========================================

-- Purpose: Create the database and define the table structure for our car sales dataset.

-- Step 1: Create database
CREATE DATABASE IF NOT EXISTS car_sales_db;

-- Step 2: Select database
USE car_sales_db;

-- Step 3: Create car_sales table
CREATE TABLE IF NOT EXISTS car_sales (

    name TEXT,
    year INT,
    selling_price BIGINT,
    km_driven INT,
    fuel TEXT,
    seller_type TEXT,
    transmission TEXT,
    owner TEXT,
    mileage TEXT,
    engine TEXT,
    max_power TEXT,
    torque TEXT,
    seats INT,
    mileage_value DOUBLE,
    engine_cc DOUBLE,
    max_power_bhp DOUBLE,
    torque_value DOUBLE

);

-- Step 4: Verify table structure
DESCRIBE car_sales;

-- Step 5: Check total records
SELECT COUNT(*) AS total_records
FROM car_sales;
