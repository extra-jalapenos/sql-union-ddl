SELECT PLANT_ID, COUNT(DISTINCT DATE(DATE_TIME)) AS DATE_COUNT
FROM `sql-sandbox-20240505.SolarPower.Generation_Data`
GROUP BY PLANT_ID
ORDER BY PLANT_ID

-- PLANT_ID	DATE_COUNT
-- 4135001	34
-- 4136001	34
