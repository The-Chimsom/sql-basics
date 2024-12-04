CREATE DATABASE company;
USE company;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees VALUES
(1, 'John Doe', 'IT', 'Software Engineer', 80000),
(2, 'Jane Smith', 'HR', 'Manager', 90000),
(3, 'Emily Johnson', 'Finance', 'Analyst', 75000);

SELECT * FROM empemployee_demographicsloyees;

