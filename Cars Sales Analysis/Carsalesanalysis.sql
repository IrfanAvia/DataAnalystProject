-- Data Summary

SELECT
    AVG([Sales_in_thousands]) AS Avg_Sales,
    AVG([Price_in_thousands]) AS Avg_Price,
    AVG([Engine_size]) AS Avg_Engine_Size,
    AVG([Horsepower]) AS Avg_Horsepower,
    AVG([Fuel_efficiency]) AS Avg_Fuel_Efficiency,
    MIN([Price_in_thousands]) AS Min_Price,
    MAX([Price_in_thousands]) AS Max_Price,
    MIN([Horsepower]) AS Min_Horsepower,
    MAX([Horsepower]) AS Max_Horsepower
FROM [Car Sales].[dbo].[CarSales_Copy];


-- Sales by Vehicle Year and Type
SELECT
    [Vehicle_type],
    YEAR([Latest_Launch2]) AS Launch_Year,
    SUM([Sales_in_thousands]) AS Total_Sales
FROM [Car Sales].[dbo].[CarSales_Copy]
GROUP BY [Vehicle_type], YEAR([Latest_Launch2])
ORDER BY Launch_Year, [Vehicle_type];


-- Total Sales and Average Car Prices by Vehicle Type
SELECT 
    Vehicle_type,
    COUNT(*) AS Total_Sales,
    SUM(Sales_in_thousands) AS Total_Sales_in_thousands,
    AVG(Price_in_thousands) AS Average_Price_in_thousands
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
GROUP BY 
    Vehicle_type
ORDER BY 
    Total_Sales DESC;

--  Correlation between Horsepower and Price
SELECT 
    Horsepower,
    AVG(Price_in_thousands) AS Average_Price_in_thousands
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
GROUP BY 
    Horsepower
ORDER BY 
    Horsepower;


-- 5 Best Selling Cars by Sales

SELECT TOP 5 
    Manufacturer,
    Model,
    Sales_in_thousands
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
ORDER BY 
    Sales_in_thousands DESC;

 -- Average Next Year Resale Value by Vehicle Type
 SELECT 
    Vehicle_type,
    AVG(year_resale_value) AS Average_Year_Resale_Value
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
GROUP BY 
    Vehicle_type
ORDER BY 
    Average_Year_Resale_Value DESC;


-- Sales by Manufacturer
	SELECT 
    Manufacturer,
    SUM(Sales_in_thousands) AS Total_Sales
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
GROUP BY 
    Manufacturer
ORDER BY 
    Total_Sales DESC;



-- 10 Highest Priced Cars
SELECT 
    Manufacturer,
    Model,
    Price_in_thousands
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
ORDER BY 
    Price_in_thousands ASC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;


-- 10 Cars with Highest Efficiency
SELECT 
    Manufacturer,
    Model,
    Fuel_efficiency
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
ORDER BY 
    Fuel_efficiency DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;


-- Relationship between Horsepower and Price
SELECT 
    CASE 
        WHEN Horsepower < 100 THEN 'Below 100 HP'
        WHEN Horsepower BETWEEN 100 AND 200 THEN '100-200 HP'
        WHEN Horsepower BETWEEN 200 AND 300 THEN '200-300 HP'
        ELSE 'Above 300 HP'
    END AS Horsepower_Range,
    AVG(Price_in_thousands) AS Average_Price
FROM 
    [Car Sales].[dbo].[CarSales_Copy]
GROUP BY 
    CASE 
        WHEN Horsepower < 100 THEN 'Below 100 HP'
        WHEN Horsepower BETWEEN 100 AND 200 THEN '100-200 HP'
        WHEN Horsepower BETWEEN 200 AND 300 THEN '200-300 HP'
        ELSE 'Above 300 HP'
    END
ORDER BY 
    Average_Price DESC;


-- Matufacturer with best Average of Efficiencies
SELECT Manufacturer, AVG(Fuel_efficiency) AS Average_Fuel_Efficiency
FROM [Car Sales].[dbo].[CarSales_Copy]
GROUP BY Manufacturer
ORDER BY Average_Fuel_Efficiency DESC


