create schema cars;
use cars;

--Read Data--
SELECT * FROM car_dekho;

--Total count of all the records present in the table--
SELECT COUNT(*) FROM car_dekho;

--The manager asked the employee- How many cars will be available in 2023?--
SELECT COUNT(*)
FROM car_dekho
WHERE year = 2023

--The manager asked the employee- How many cars will be available in 2020, 2021, 2022?--
SELECT COUNT(*)  
FROM car_dekho
WHERE year = 2022

SELECT COUNT(*)  
FROM car_dekho
WHERE year = 2021

SELECT COUNT(*)  
FROM car_dekho
WHERE year = 2020

SELECT COUNT(*), year
FROM car_dekho
WHERE year IN (2020, 2021, 2022)
GROUP BY year

--Client asks me to print the total no. of cars by year. But he don't want to see all other details.--
SELECT year, COUNT(*)
FROM car_dekho
GROUP BY year

--Client asked to car dealer agent how many diesel cars will there be in 2010?--
SELECT COUNT(*)
FROM car_dekho
WHERE year = 2010 AND 
      fuel = 'Diesel'
      
--Client asked to car dealer agent how many petrol cars will there be in 2020?--
SELECT COUNT(*)
FROM car_dekho
WHERE year = 2020 AND 
      fuel = 'Petrol'
      
--Manager asked the employee to give all the fuel cars (petrol, diesel, CNG) combined by all years--
SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'Petrol'
GROUP BY year

SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'Diesel'
GROUP BY year

SELECT year, COUNT(*)
FROM car_dekho
WHERE fuel = 'CNG'
GROUP BY year

--Manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
SELECT year, COUNT(*)
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100

--Manager said to the employee he needs all cars count details between 2015 and 2023, they need a complete list--
SELECT COUNT(*)
FROM car_dekho
WHERE year 
BETWEEN 2015 AND 2023