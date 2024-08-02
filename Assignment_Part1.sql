-- Query 1

-- To use sql_store database
USE sql_store;

-- To explore the customers table
SELECT *
FROM customers;

-- To select records of customer whose ID is 1
SELECT *
FROM customers
WHERE customer_id = 1
ORDER BY first_name;

-- Query Select 2

-- To select last name, first name of customers, original point and the points plus 10 .
SELECT last_name, first_name, points, points + 10 
FROM Customers;

-- Task 1
/* Using the Query 2 you created change the points to read times by 10 and plus 100. 
Record your results in your word document */
SELECT last_name, first_name, points, (points * 10) + 100 
FROM customers;

/* Change the Query 2 code to create a discount factor so the table now 
shows a discount header and changing the (point + 10) *100 */
SELECT last_name, first_name, points, (points  + 10) * 100 as discount_factor
FROM customers;

-- Task 2
/* Write a SQL query to return all the products in our database in the result set.
 We need to show columns; name, unit price, and new column called new price which is based on this expression, (unit price * 1.1 ).
   So what you are doing is increasing the product price of each by 10%. 
   So with the query we want all the products the original price and the new  price.  */
-- Explore the table
SELECT *
FROM products;

-- Now the Query
SELECT name, unit_price, (unit_price * 1.1) as new_price
FROM products;

-- Task 3
/* In this task create a new query to find all the customers with a birth date of > '1990-01-01'*/
-- Explore customers table
SELECT *
FROM customers;

-- Now the query
SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

-- Task 4
/* Select sql_inventory.
Write a query to find out the name of the product with most amount in stock.*/
-- Use sql_inventory database
Use sql_inventory;

-- Explore products table

SELECT * 
FROM products;

-- Write a query to find out the name of the product with most amount in stock.
Select name, quantity_in_stock
FROM products
ORDER BY quantity_in_stock DESC
LIMIT 1;

-- Task 5
-- Select sql_inventory.
-- Write a query to find out the name of the most expensive product.
Select name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 1;

-- Task 6
-- Select sql_store.
-- Write a query to find out the first name, last name, address and the birthdate of the oldest customer.
-- Use sql_store
Use sql_store;

-- Explore customers table
SELECT *
FROM customers;

-- We need the first name, last name, address and the birthdate of the oldest customer
-- We will need age variable from the birthdate
-- age = datediff(year,birth_date, current_date());
select current_date();
select curdate();

-- first name, last name, address and the birthdate of the all customers
SELECT first_name, last_name, birth_date, curdate(), timestampdiff(YEAR, birth_date, curDate()) as age
FROM customers;

-- first name, last name, address and the birthdate of the oldest customer (checking)
SELECT first_name, last_name, birth_date, curdate(), timestampdiff(YEAR, birth_date, curDate()) as age
FROM customers
ORDER BY age DESC;

-- first name, last name, address and the birthdate of the oldest customer
SELECT first_name, last_name, birth_date, address, curdate(), timestampdiff(YEAR, birth_date, curDate()) as age
FROM customers
ORDER BY age DESC
LIMIT 1;

-- Task 7: ERD using Reverse Engineeering
-- The ERD is in the word document.













