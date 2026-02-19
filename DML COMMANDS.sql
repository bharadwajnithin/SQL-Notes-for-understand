CREATE DATABASE school_db;

USE school_db;

CREATE TABLE students (
    stu_id INT PRIMARY KEY,
    stu_name VARCHAR(50),
    stu_fees INT,
    stu_subject VARCHAR(50),
    stu_age INT,
    stu_class INT
);

desc students;

INSERT INTO students VALUES
(1, 'Divyesha Patil', 3000, 'Maths', 16, 10),
(2, 'Mayra Pandit', 2000, 'Social Science', 15, 10),
(3, 'Kunal Purohit', 4500, 'Chemistry', 17, 11),
(4, 'Manvi Tyagi', 2000, 'Social Science', 16, 9),
(5, 'Joy Yadav', 3000, 'Maths', 16, 9),
(6, 'Tisha Shah', 2500, 'Science', 15, 9),
(7, 'Surbhi Soni', 4000, 'Chemistry', 17, 10);

#update  
update students
set stu_age = 19
where stu_id = 1;

#delete 
delete from students
where stu_id = 2;

select * from students
where stu_fees < 3000;

#group BY  START 
select stu_class, stu_fees as ttoo
from students
group by stu_class;

SELECT stu_class, SUM(stu_fees) AS tota
FROM students
GROUP BY stu_class;

select stu_fees as sttt
from students 
group by stu_fees;

select stu_age, sum(stu_fees)
from students 
group by stu_age;

# ex1
select stu_class, count(stu_name) as sss
from students 
group by stu_class;

#ex2
select stu_subject, sum(stu_fees) as ttofeeforsub
from students 
group by stu_subject;

#ex3 
select stu_class, avg(stu_age) as avgageofstu
from students
group by stu_class;

#ex4 
select stu_class, max(stu_fees) as maxfees
from students
group by stu_class;

select * from students;

#GROUP  BY ENDS 

#ORDER BY STARTS 
select * from students order by stu_fees asc;

select stu_age from students
order by stu_fees asc;

select stu_age from students
order by stu_fees desc;

#order by ends 

# having clause 
SELECT stu_subject, COUNT(stu_name) AS FRG 
FROM students 
where stu_age > 16
GROUP BY stu_subject
having stu_age > 16;

select stu_subject, count(*) as num_students
from students
group by stu_subject 
having count(*) > 0;

#limit 
select stu_name from students
limit 4;
