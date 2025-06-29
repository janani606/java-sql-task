 Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(30),
    available_copies INT
);

 Create Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    membership_date DATE
);

 Create Borrow Table (Relation between Members and Books)
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

 Insert Records into Books Table
INSERT INTO Books VALUES (1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 3);
INSERT INTO Books VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 2);
INSERT INTO Books VALUES (3, '1984', 'George Orwell', 'Dystopian', 4);
INSERT INTO Books VALUES (4, 'Atomic Habits', 'James Clear', 'Self-Help', 5);
INSERT INTO Books VALUES (5, 'Clean Code', 'Robert C. Martin', 'Programming', 1);

 Insert Records into Members Table
INSERT INTO Members VALUES (101, 'Anjali Mehra', 'anjali@example.com', '2023-01-15');
INSERT INTO Members VALUES (102, 'Ravi Kumar', 'ravi@example.com', '2022-11-10');
INSERT INTO Members VALUES (103, 'Sita Reddy', 'sita@example.com', '2023-03-05');
INSERT INTO Members VALUES (104, 'John Peter', 'john@example.com', '2023-04-20');
INSERT INTO Members VALUES (105, 'Kiran Dev', 'kiran@example.com', '2022-12-01');

 Insert Records into Borrow Table
INSERT INTO Borrow VALUES (1, 101, 2, '2023-06-01', '2023-06-15');
INSERT INTO Borrow VALUES (2, 102, 4, '2023-06-10', NULL);
INSERT INTO Borrow VALUES (3, 103, 1, '2023-06-12', '2023-06-20');
INSERT INTO Borrow VALUES (4, 104, 5, '2023-06-20', NULL);
INSERT INTO Borrow VALUES (5, 105, 3, '2023-06-25', NULL);
