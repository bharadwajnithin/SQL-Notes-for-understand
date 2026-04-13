create database jio2;

use jio2;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'Nithin', 'CSE'),
(2, 'Rahul', 'ECE'),
(3, 'Sneha', 'CSE'),
(4, 'Amit', 'ME'),
(5, 'Pooja', 'CSE'),
(6, 'Kiran', 'ECE'),
(7, 'Ravi', 'ME'),
(8, 'Anjali', 'CSE'),
(9, 'Vikas', 'ECE'),
(10, 'Meena', 'ME');

INSERT INTO Marks VALUES
(101, 1, 'Maths', 85),
(102, 2, 'Maths', 90),
(103, 3, 'Maths', 78),
(104, 4, 'Maths', 88),
(105, 5, 'Maths', 92),
(106, 6, 'Maths', 67),
(107, 7, 'Maths', 74),
(108, 1, 'Science', 80),
(109, 2, 'Science', 85),
(110, 11, 'Maths', 70); 

#  1.Display all students with their marks.

select s.name,m.marks
from Students s
inner join marks m
on s.student_id=m.student_id;

#2. Display all students even if they don’t have marks.
select s.name , m.marks
from Students s
left join marks m
on s.student_id=m.student_id;


# 3.Display all marks even if the student does not exist.

select s.name , m.marks
from Students s
right join marks m
on s.student_id=m.student_id;

# Find students who don’t have any marks.

select s.name
from Students s
left join marks m
on s.student_id = m.student_id
where marks is NULL;

# Find students who scored more than 80.

select s.name
from Students s
left join marks m
on s.student_id=m.student_id
where marks > 80 ;


# Display total number of subjects per student.

select s.name, count(m.subject)
from Students s
right join  marks m
on s.student_id=m.student_id
group by s.name;



# Display all student names with their average marks.

select s.name ,avg(m.marks)
from Students s
left  join marks m
on s.student_id=m.student_id
where marks is not null 
group by s.name
; 


# Find students who scored less than 70.

select s.name 
from Students s
left join marks m
on s.student_id=m.student_id
where marks <70;



# Find the highest marks with student name.

select s.name,m.marks 
from Students s
left join marks m
on s.student_id=m.student_id
order by marks desc  
limit 1;

#or 

SELECT s.name, m.marks
FROM Students s
JOIN Marks m
ON s.student_id = m.student_id
WHERE m.marks = (SELECT MAX(marks) FROM Marks);


# Find the second highest marks with student name.


select s.name,m.marks
from Students s
join marks m
on s.student_id=m.student_id
order by marks desc
limit 1
offset 1;

#Find students who have more than one subject.
select s.name,count(m.subject) as nsub
from Students s
left join marks m
on s.student_id=m.student_id
group by s.name
having nsub=1;


#Find unmatched records from both tables.

select s.name,m.marks 
from students s
left join marks m
on s.student_id=m.student_id
where m.student_id is null

union 

select s.name,m.marks
from students s
left join marks m
on s.student_id=m.student_id
where  s.student_id is null;









