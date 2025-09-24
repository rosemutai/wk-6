-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
SELECT t1.firstName, t1.lastName, t1.email, t1.officeCode
  FROM employees AS t1
  INNER JOIN offices AS t2 ON t1.officeCode = t2.officeCode;

-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column
SELECT p.productName, p.productVendor, p.productLine 
  FROM products AS p
  LEFT JOIN productlines AS t2 ON p.productLine = t2.productLine;

-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;
