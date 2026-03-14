create database pra;


use pra;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    branch VARCHAR(30),
    age INT,
    marks DECIMAL(5,2),
    city VARCHAR(30)
);

INSERT INTO Students VALUES
(1,'Nithin','CSE',20,85.50,'Mysore'),
(2,'Rahul','ISE',21,78.00,'Bangalore'),
(3,'Anjali','ECE',19,92.40,'Mangalore'),
(4,'Kiran','CSE',22,67.80,'Mysore'),
(5,'Sneha','EEE',20,88.60,'Hubli'),
(6,'Arjun','MECH',23,74.20,'Belgaum'),
(7,'Pooja','CSE',21,81.75,'Bangalore'),
(8,'Rakesh','ISE',20,69.30,'Mysore'),
(9,'Divya','ECE',19,95.10,'Mangalore'),
(10,'Manoj','EEE',22,72.00,'Hubli'),
(11,'Sanjay','CSE',20,84.25,'Bangalore'),
(12,'Kavya','ISE',21,79.60,'Mysore'),
(13,'Vikram','MECH',23,66.45,'Belgaum'),
(14,'Asha','ECE',20,90.00,'Mangalore'),
(15,'Rohit','CSE',22,73.55,'Bangalore'),
(16,'Meena','EEE',19,87.90,'Hubli'),
(17,'Tarun','ISE',21,70.80,'Mysore'),
(18,'Neha','CSE',20,91.35,'Bangalore'),
(19,'Varun','MECH',22,68.50,'Belgaum'),
(20,'Ishita','ECE',19,93.75,'Mangalore');


## 🔹 Level 1 – Basic
    # 1. Display students whose age is 20.
        select*from students where age=20;
	#2. Show students from Bangalore.
         select*from students  where city ="Bangalore";
         
	#3.Display names and marks of all ECE students.alter
    select student_name,marks
    from students
    where branch="ECE";
    
  #4. Update city of student_id = 6 to "Mysore".
  update  students 
  set city="Mysore "
  where student_id=6;
  
#5. Delete students from MECH branch.

delete from students 
where branch ="branch";


  
## 🔹 Level 2 – Intermediate

#6. Display students with marks between 80 and 90.

select student_name ,marks 
from students 
where marks>80<90;

#7. Show students whose name starts with 'A'.

select student_name from students
where student_name like 'A%';

#8. Increase marks by 3 for all CSE students.


select branch,student_id as upd
from students 
group by branch;

update students
set marks =marks+3
where branch ="CSE";
# enable safe mode  for disable put 1 set sql_safe_updates=0;  

#9. Delete students older than 22.
delete from  students 
where age>21;

#10. Display top 5 students based on marks.

select student_name,marks 
from students
order by marks desc                                             
limit 5;

#ex display the second highest mark students from table ((using offset )
select student_name,marks 
from students
order by marks desc                                             
limit 1 offset 1;

#ORDER BY marks DESC → Sorts marks from highest to lowest
#LIMIT 1 → Returns 1 row
#OFFSET 1 → Skips the highest mark (first row)
#This gives the 2nd highest student


#11. Show students from Mysore AND marks > 75

select *from students 
where city="Mysore" and marks>75;

#12. Display students from CSE OR ECE branch.
select *from students 
where "ECE" or "CSE" =branch;

#13.Show students whose name ends with 'a'.

select *from students 
where student_name like "%a";


#14. Update marks to 60 for students who scored below 70.

update students set marks=60
where marks <80;

#15. Delete students whose city is NOT Bangalore.
delete from students 
where city !="Bangalore";



## 🔹 Challenge Questions (Exam Type)
 
#16. Find average marks of each branch

select branch ,avg(marks) as mk
from students 
group by branch;

#17. Count number of students in each city.

select city , count(*)  as total_num_studets_city
from students
group by city ;


#18. Display branch with highest average marks.

select branch, avg(marks) as highmarks 
from students 
group by branch
order by highmarks desc
limit 1;

#19. Show second highest marks in the table.
select branch, avg(marks) as highmarks 
from students 
group by branch
order by highmarks desc
limit 1 offset 1;

#20. Find total students whose marks are above average.









  select *from students ;