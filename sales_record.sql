CREATE DATABASE Sale;
USE Sale;

CREATE TABLE customers (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Ensure UNSIGNED matches the foreign key
  name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Ensure UNSIGNED matches the customer_id
  customer_id INT UNSIGNED NOT NULL,          -- Match the UNSIGNED attribute of `customers.id`
  name VARCHAR(50) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers (id)
);

SHOW TABLES;
SELECT * FROM orders;

DESCRIBE orders
