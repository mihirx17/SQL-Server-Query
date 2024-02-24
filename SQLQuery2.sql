USE Student1_DataBase;
SELECT *FROM employees;
SELECT *FROM employees WHERE manager_id= 2
AND(first_name LIKE '%E' OR first_name LIKE  '%A');
SELECT *FROM employees where NOT salary <6000; 
SELECT COUNT(*) FROM employees;
SELECT *FROM employees where manager_id IN (2);
SELECT *FROM employees where manager_id =2
SELECT first_name ,last_name FROM employees where manager_id=2;
SELECT *FROM employees WHERE salary BETWEEN 70000 AND 90000;

SELECT *FROM staff;
INSERT INTO staff (staff_id, first_name, last_name, department, salary)
VALUES
    (1, 'Michael', 'Johnson', 'HR', 55000.00),
    (2, 'Emily', 'Brown', 'Marketing', 60000.00),
    (3, 'David', 'Lee', 'Finance', 58000.00),
    (4, 'Sarah', 'Miller', 'IT', 65000.00);
	create database company;
	use company;

	CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- Inserting values into the departments table
INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'Marketing'),
    (3, 'Finance'),
    (4, 'IT');

-- Inserting values into the employees table
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
    (1, 'John', 'Doe', 1, 50000.00),  -- John Doe works in HR
    (2, 'Jane', 'Smith', 2, 60000.00), -- Jane Smith works in Marketing
    (3, 'Alice', 'Johnson', 3, 55000.00), -- Alice Johnson works in Finance
    (4, 'Bob', 'Jones', 4, 65000.00); -- Bob Jones works in IT
	SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;
SELECT e.first_name, e.last_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > 1000;
SELECT e.first_name, e.last_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.first_name='john';


