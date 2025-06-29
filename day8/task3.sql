-- 1. Create Course Table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    course_fee DECIMAL(10, 2)
);

-- 2. Create Student Table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

-- 3. Insert Records into Course Table
INSERT INTO course VALUES (101, 'Java Programming', 5000.00);
INSERT INTO course VALUES (102, 'Python Programming', 4500.00);
INSERT INTO course VALUES (103, 'Web Development', 6000.00);
INSERT INTO course VALUES (104, 'Data Structures', 4000.00);
INSERT INTO course VALUES (105, 'Database Systems', 5500.00);

-- 4. Insert Records into Student Table
INSERT INTO student VALUES (1, 'Arun Kumar', 20, 101);
INSERT INTO student VALUES (2, 'Priya Sharma', 19, 102);
INSERT INTO student VALUES (3, 'Vikram Das', 21, 103);
INSERT INTO student VALUES (4, 'Sneha Reddy', 22, 105);
INSERT INTO student VALUES (5, 'Rahul Verma', 20, 104);

-- 5. Update a Course Fee
UPDATE course
SET course_fee = 5200.00
WHERE course_id = 101;
