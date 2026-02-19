#create 
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

#add using alter 
use student;

select * from stu_info;

Alter table students add dob int;

# rename using alter 
alter table students rename column dob To DOOB;

#drop using alter 
alter table students drop doob;

# modify using alter 
alter table students modify name varchar(500);

# truncate 
truncate table stu_info;

select * from stu_info;

DROP TABLE stu_info;

ROLLBACK;
