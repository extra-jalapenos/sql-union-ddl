CREATE TABLE SolarPower.Generation_Data AS
SELECT * FROM `sql-sandbox-20240505.SolarPower.Plant_1_Generation_Data`
UNION ALL
SELECT * FROM `sql-sandbox-20240505.SolarPower.Plant_2_Generation_Data`
