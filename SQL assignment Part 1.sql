# Solution 1

CREATE TABLE employees (
    emp_id INTEGER NOT NULL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    email TEXT UNIQUE,
    salary DECIMAL DEFAULT 30000
);


# Solution 2

#Constraints in a database help enforce rules on the data to ensure accuracy, reliability, and consistency. They prevent invalid data entry and maintain data integrity, ensuring the database remains dependable over time.
# Ensure valid data entry
# Maintain data consistency
# enhance security and reliability


# Solution 3

# Applying the NOT NULL constraint to a column ensures that a value must always be provided when inserting or updating data in that column. This helps maintain data integrity by preventing missing or incomplete records.
# No, a primary key cannot contain NULL values because it must uniquely identify each row in the table.
# Its because a primary key is always unique and has referential integrity.

# Soltuion 4

#In SQL, you can add or remove constraints on an existing table using the ALTER TABLE command.
# To add a constraint
ALTER TABLE employees 
ADD CONSTRAINT check_salary CHECK (salary >= 50000);

# To remove a constraint
ALTER TABLE employees 
DROP CONSTRAINT check_salary;

#To drop constraint
ALTER TABLE employees 
MODIFY COLUMN emp_name TEXT NULL;


# Solution 5

# Violating constraints in a database leads to errors that prevent invalid data from being inserted, updated, or deleted. This helps maintain data integrity and ensures consistency across the system.
# Attempting to insert an employee with an invalid age might result in an error like:
# ERROR: CHECK constraint "chk_age" violated: age must be at least 18


# Solutin 6

#Since the products table was created without constraints, you can use the ALTER TABLE statement to add them.
# Make product_id a Primary Key
ALTER TABLE products 
ADD CONSTRAINT pk_product PRIMARY KEY (product_id);

#Set a Default Value for price
ALTER TABLE products 
ALTER COLUMN price SET DEFAULT 50.00;

# Solution 7

# To fetch the student_name and class_name for each student using an INNER JOIN.
SELECT Students.student_name, Classes.class_name
FROM Students
INNER JOIN Classes ON Students.class_id = Classes.class_id;

# Solution 8

# Write a query that shows all order_id, customer_name, and product_name, ensuring that all products are
#listed even if they are not associated with an order.

SELECT Orders.order_id, Customers.customer_name, Products.product_name
FROM Products
LEFT JOIN Orders ON Products.order_id = Orders.order_id
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id;

# Solution 9

# Write a query to find the total sales amount for each product using an INNER JOIN and the SUM() function.
SELECT Products.product_name, SUM(Sales.amount) AS total_sales
FROM Sales
INNER JOIN Products ON Sales.product_id = Products.product_id
GROUP BY Products.product_name;


# Solution 10

# Write a query to display the order_id, customer_name, and the quantity of products ordered by each
#customer using an INNER JOIN between all three tables.
SELECT Orders.order_id, Customers.customer_name, OrderDetails.quantity
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id
INNER JOIN OrderDetails ON Orders.order_id = OrderDetails.order_id;


