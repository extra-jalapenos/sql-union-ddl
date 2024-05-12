-- Which inverter generated the highest total yield? Which plant does it belong to? Hint: careful with the aggregation function you use with the total_yield field, read carefully its description on the kaggle page.
--> the kicker is that total_yield is total yielding for this inverter.

SELECT SOURCE_KEY, PLANT_ID, MAX(TOTAL_YIELD) AS TOTAL_YIELD
FROM `sql-sandbox-20240505.SolarPower.Generation_Data`
GROUP BY SOURCE_KEY, PLANT_ID
ORDER BY TOTAL_YIELD DESC
LIMIT 5

-- the top 5 all belong to plant 2.

-- SOURCE_KEY	PLANT_ID	TOTAL_YIELD
-- 9kRcWv60rDACzjR	4136001	2247916295.0
-- LYwnQax7tkwH5Cb	4136001	1795115880.0
-- oZZkBaNadn6DNKz	4136001	1708287724.0
-- oZ35aAeoifZaQzV	4136001	1660188893.0
-- V94E5Ben1TlhnDV	4136001	1412292515.0
