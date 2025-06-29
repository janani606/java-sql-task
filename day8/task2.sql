-- Create Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- Create Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department VARCHAR(50)
);

-- Insert Records into Student Table
INSERT INTO Student (student_id, name, age, department) VALUES
(1, 'Arun Kumar', 20, 'Computer Science'),
(2, 'Meena R', 21, 'Information Technology'),
(3, 'Karthik S', 19, 'Electronics'),
(4, 'Divya P', 22, 'Computer Science'),
(5, 'Suresh M', 20, 'Mechanical');

-- Insert Records into Course Table
INSERT INTO Course (course_id, course_name, credits, department) VALUES
(101, 'Data Structures', 4, 'Computer Science'),
(102, 'Digital Electronics', 3, 'Electronics'),
(103, 'Thermodynamics', 4, 'Mechanical'),
(104, 'Database Management', 3, 'Information Technology'),
(105, 'Operating Systems', 4, 'Computer Science');
