
-- ==========================================
-- Project: Car Sales Analysis
-- File: 08_vehicle_analysis.sql
-- Purpose: Vehicle Analysis
-- ==========================================

-- Purpose: Analyse vehicle age, kilometres driven, mileage, engine capacity, maximum power and seating capacity.
USE car_sales_db;

-- 1. Average kilometres driven by fuel type
SELECT
    fuel,
    COUNT(*) AS total_listings,
    ROUND(AVG(km_driven), 2) AS average_km_driven
FROM car_sales
GROUP BY fuel
ORDER BY average_km_driven DESC;


-- 2. Top 10 most driven cars
SELECT
    name,
    year,
    km_driven,
    selling_price
FROM car_sales
ORDER BY km_driven DESC
LIMIT 10;


-- 3. Car listings by manufacturing year
SELECT
    year,
    COUNT(*) AS total_listings
FROM car_sales
GROUP BY year
ORDER BY year DESC;


-- 4. Average listed price by manufacturing year
SELECT
    year,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
GROUP BY year
ORDER BY year DESC;


-- 5. Average engine capacity by fuel type
SELECT
    fuel,
    COUNT(engine_cc) AS available_engine_records,
    ROUND(AVG(engine_cc), 2) AS average_engine_cc
FROM car_sales
WHERE engine_cc IS NOT NULL
GROUP BY fuel
ORDER BY average_engine_cc DESC;


-- 6. Average maximum power by fuel type
SELECT
    fuel,
    COUNT(max_power_bhp) AS available_records,
    ROUND(AVG(max_power_bhp), 2) AS average_power_bhp
FROM car_sales
WHERE max_power_bhp IS NOT NULL
GROUP BY fuel
ORDER BY average_power_bhp DESC;


-- 7. Car listings by seating capacity
SELECT
    seats,
    COUNT(*) AS total_listings,
    ROUND(AVG(selling_price), 2) AS average_price
FROM car_sales
WHERE seats IS NOT NULL
GROUP BY seats
ORDER BY total_listings DESC;


-- 8. Cars with high mileage and low kilometres driven
-- Note: Mileage units may differ (kmpl and km/kg).
SELECT
    name,
    year,
    fuel,
    mileage_value,
    km_driven,
    selling_price
FROM car_sales
WHERE mileage_value >= 20
AND km_driven <= 50000
ORDER BY mileage_value DESC
LIMIT 20;


-- 9. Relationship between engine capacity and maximum power
SELECT
    engine_cc,
    max_power_bhp,
    name,
    selling_price
FROM car_sales
WHERE engine_cc IS NOT NULL
AND max_power_bhp IS NOT NULL
ORDER BY engine_cc DESC
LIMIT 20;
