CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    manager_id INT,
);
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_title, department, salary, manager_id)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2022-01-01', 'Software Engineer', 'Engineering', 75000.00, NULL),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2022-01-15', 'Marketing Manager', 'Marketing', 80000.00, NULL),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '345-678-9012', '2022-02-01', 'Sales Representative', 'Sales', 60000.00, 2),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '456-789-0123', '2022-02-15', 'HR Specialist', 'Human Resources', 65000.00, 2),
    (5, 'David', 'Martinez', 'david.martinez@example.com', '567-890-1234', '2022-03-01', 'Accountant', 'Finance', 70000.00, 2),
    (6, 'Jessica', 'Lee', 'jessica.lee@example.com', '678-901-2345', '2022-03-15', 'Graphic Designer', 'Creative', 60000.00, 2),
    (7, 'Christopher', 'Wilson', 'christopher.wilson@example.com', '789-012-3456', '2022-04-01', 'Software Developer', 'Engineering', 80000.00, 1),
    (8, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '890-123-4567', '2022-04-15', 'Marketing Coordinator', 'Marketing', 55000.00, 2),
    (9, 'Kevin', 'Anderson', 'kevin.anderson@example.com', '901-234-5678', '2022-05-01', 'Sales Manager', 'Sales', 90000.00, 2),
    (10, 'Amanda', 'Garcia', 'amanda.garcia@example.com', '012-345-6789', '2022-05-15', 'HR Manager', 'Human Resources', 95000.00, 2);
	
	SELECT first_name, last_name, salary 
FROM employees 
WHERE salary >= 50000 AND salary <= 60000;
SELECT first_name from employees;
SELECT first_name, salary + 1000 from employees where first_name='john'; 

SELECT *FROM employees;
UPDATE employees set first_name ='mihir' where first_name='john';
UPDATE employees
SET first_name = 'mihir'
WHERE first_name = 'john';
UPDATE employees
SET first_name='PROMOTED'
WHERE salary <=60000;


UPDATE employees set salary=salary+10000
where manager_id=2;
SELECT salary ,first_name From employees where manager_id=2;

UPDATE employees SET last_name ='Not requied' ,salary=salary+10000
where first_name='PROMOTED'
SELECT  salary from employees where first_name='PROMOTED';