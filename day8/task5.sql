 Create Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

 Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

 Insert Records into Department Table
INSERT INTO Department VALUES (1, 'HR', 'Chennai');
INSERT INTO Department VALUES (2, 'Finance', 'Mumbai');
INSERT INTO Department VALUES (3, 'IT', 'Bangalore');
INSERT INTO Department VALUES (4, 'Marketing', 'Delhi');
INSERT INTO Department VALUES (5, 'Sales', 'Hyderabad');

 Insert Records into Employee Table
INSERT INTO Employee VALUES (101, 'Aarav Mehta', 30, 45000.00, 1);
INSERT INTO Employee VALUES (102, 'Sneha Iyer', 28, 52000.00, 3);
INSERT INTO Employee VALUES (103, 'Rahul Verma', 35, 60000.00, 2);
INSERT INTO Employee VALUES (104, 'Neha Rani', 26, 47000.00, 4);
INSERT INTO Employee VALUES (105, 'Karan Singh', 32, 55000.00, 5);
