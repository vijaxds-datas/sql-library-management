CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(100),
    Author VARCHAR(50)
);

CREATE TABLE IssuedBooks (
    IssueID INT PRIMARY KEY,
    StudentID INT,
    BookID INT,
    IssueDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Students VALUES
(1, 'Vijay', 'CSE'),
(2, 'Arun', 'ECE');

INSERT INTO Books VALUES
(101, 'Python Basics', 'John'),
(102, 'SQL Guide', 'David');

SELECT * FROM Students;

SELECT * FROM Books;
