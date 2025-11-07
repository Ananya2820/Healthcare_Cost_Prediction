-- CapstoneProject_SQL.sql
-- Create table and import CSV (SQLite syntax shown; adapt for MySQL/Postgres)
DROP TABLE IF EXISTS insurance;
CREATE TABLE insurance (
  age INTEGER,
  sex TEXT,
  bmi REAL,
  children INTEGER,
  smoker TEXT,
  region TEXT,
  charges REAL
);

-- If using sqlite3 CLI, import with:
-- .mode csv
-- .import insurance.csv insurance

-- SQL Analysis queries
-- 1) Average cost by region
SELECT region, ROUND(AVG(charges),2) AS avg_charges, COUNT(*) AS n
FROM insurance
GROUP BY region
ORDER BY avg_charges DESC;

-- 2) Average cost smokers vs non-smokers
SELECT smoker, ROUND(AVG(charges),2) AS avg_charges, COUNT(*) as n
FROM insurance
GROUP BY smoker;

-- 3) Average cost by age groups (example bins)
SELECT
  CASE
    WHEN age < 25 THEN 'Below_25'
    WHEN age BETWEEN 25 AND 34 THEN '25-34'
    WHEN age BETWEEN 35 AND 44 THEN '35-44'
    WHEN age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55_plus'
  END AS age_group,
  ROUND(AVG(charges),2) AS avg_charges,
  COUNT(*) AS n
FROM insurance
GROUP BY age_group
ORDER BY avg_charges DESC;

-- 4) Top 5 highest charges
SELECT * FROM insurance ORDER BY charges DESC LIMIT 5;

-- 5) Correlation simplified by SQL: average BMI vs avg charges by region
SELECT region, ROUND(AVG(bmi),2) as avg_bmi, ROUND(AVG(charges),2) as avg_charges
FROM insurance
GROUP BY region;
