create database practice6;

use practice6;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    age INT
);

INSERT INTO Students VALUES
(1, 'Rahul', 'CSE', 20),
(2, 'Ananya', 'ECE', 21),
(3, 'Kiran', 'CSE', 22),
(4, 'Sneha', 'ME', 20),
(5, 'Vikram', 'EEE', 23),
(6, 'Priya', 'CSE', 21),
(7, 'Arjun', 'ECE', 22),
(8, 'Megha', 'ME', 20),
(9, 'Rohit', 'EEE', 24),
(10, 'Divya', 'CSE', 21);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


INSERT INTO Marks VALUES
(101, 1, 'DBMS', 85),
(102, 2, 'Java', 78),
(103, 3, 'DBMS', 92),
(104, 4, 'Maths', 67),
(105, 5, 'Java', 74),
(106, 6, 'DBMS', 88),
(107, 7, 'Maths', 81),
(108, 8, 'Java', 69),
(109, 9, 'DBMS', 73),
(110, 10, 'Java', 95);

select * from  students ;
#
select  s.student_name ,m.marks 
from Students s
join Marks m
on s.student_id =m.student_id ;
#
select s.student_name,s.department,m.subject,m.marks
from Students s
join Marks m
on s.student_id=m.student_id;

#Show students who scored more than 85.
select



DESC Students;


