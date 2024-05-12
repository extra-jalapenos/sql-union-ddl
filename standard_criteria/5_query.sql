SELECT PLANT_ID, COUNT(DISTINCT SOURCE_KEY) as inventer_count
FROM `sql-sandbox-20240505.SolarPower.Generation_Data`
GROUP BY PLANT_ID
ORDER BY PLANT_ID

-- 22?
-- PLANT_ID	inventer_count
-- 4135001	22
-- 4136001	22
