# SQL Assignment Part 2 
# using the “world” database
use world;

# Task 1:
# Using count, get the number of cities in the USA
-- Explore city table
SELECT *
FROM city;

# Using count, get the number of cities in the USA
SELECT count(Name) as Number_of_Cities_USA
FROM city
WHERE CountryCode = 'USA';

# Task 2:
# Find out what the population and average life expectancy for people in Argentina (ARG) is.
-- Explore country table
SELECT *
FROM country;

-- Population and average life expectancy for people in Argentina (ARG)
SELECT Name, LifeExpectancy, Population
FROM country
WHERE code = "ARG";

# Task 3:
# Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

# Task 4:
# Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT Name as City_Name
FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

# Task 5:
# Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID, Name, Population
FROM city
ORDER BY ID
LIMIT 10;

# Task 6:
# Create a SQL statement to display columns Id, Name, Population from the city table and limit results to rows 31-40.
# we need to use the OFF SET in the LIMIT query
SELECT ID, Name, Population
FROM city
ORDER BY ID
LIMIT 30, 10;

# Task 7:
# Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT Name, Population
FROM city
WHERE Population > 2000000
ORDER BY Population;

# Task 8:
# Create a SQL statement to find all city names from city table whose name begins with Be prefix.
SELECT Name
FROM city
WHERE Name LIKE 'Be%';

# Task 9:
# Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000
ORDER BY Population;

# Task 10:
# Create a SQL statement to display all cities from the city table sorted by Name in ascending order.
SELECT Name as City_Name
FROM city
ORDER BY Name;

# Task 11:
# Create a SQL statement to find a city with the lowest population in the city table.
SELECT Name as City_Name, Population
FROM city
ORDER BY Population
LIMIT 1;

# Task 12:
# Create a SQL statement to find a country with the largest population in the country table.
SELECT Name as County_Name, Population
FROM country
ORDER BY Population DESC
LIMIT 1;

# Task 13:
# Create an ERD for World database and paste in the word document.

























