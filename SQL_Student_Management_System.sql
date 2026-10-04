# Project Student Mangement System
# ===================================================

create database student_db;

use student_db;

# Student Table 
# ==============================

create table students(
student_id int primary key,
name varchar(50),
age int,
gender varchar(50),
city varchar(50));

# Insert 10 Students in table
# ---------------------------------

insert into students values (1,"satyam", 19, "Male", "Rohtas");
insert into students values (2,"Rishabh", 20, "Male", "Raigarh");
insert into students values (3,"Pranay", 18, "Male", "champaran");
insert into students values (4,"Ayush", 21, "Male", "Bhopal");
insert into students values (5,"Amit", 22, "Male", "Gaya");
insert into students values (6,"Akash", 23, "Male", "Hatia");
insert into students values (7,"Rahul", 24, "Male", "Bhilai");
insert into students values (8,"Apurv", 20, "Male", "Patna");
insert into students values (9,"Kundan", 23, "Male", "Bangladesh");
insert into students values (10,"Ashutosh", 17,"Male", "Rohtas");


# Course Table 
# ===========================

create table courses(
course_id int primary key,
course_name varchar(50),
fees int);

# Insert 5 Cources in Course Table.
# ----------------------------------

insert into courses values (101, "CSE", 40000);
insert into courses values (102, "DS", 50000);
insert into courses values (103, "IT", 60000);
insert into courses values (104, "Cyber", 70000);
insert into courses values (105, "AIML", 80000);

# Enrollment Table 
# ==================================

create table enrollment(
enrollment_id int primary key,
student_id int,
course_id int,
marks int,
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id));

# Insert Enrollment Records.
# ---------------------------------------

insert into enrollment values (1, 1, 105, 87);
insert into enrollment values (2, 1, 102, 97);
insert into enrollment values (3, 2, 103, 77);
insert into enrollment values (4, 3, 102, 88);
insert into enrollment values (5, 4, 101, 86);
insert into enrollment values (6, 5, 105, 84);
insert into enrollment values (7, 6, 104, 89);
insert into enrollment values (8, 7, 103, 81);
insert into enrollment values (9, 8, 102, 83);
insert into enrollment values (10, 9, 105, 97);
insert into enrollment values (11, 10, 101, 67);

# Display All Student.
# ===========================

Select name from students;

# Update Student City.
# ===========================

set sql_safe_updates = 0;

update students
set city = "Chenai"
where city = "Bhopal";

# Delete One Student. 
# =========================

delete from enrollment 
where student_id = 10;

delete from students 
where student_id = 10; 
rollback;
commit; 

# Add New Column. 
# =========================

Alter table students 
Add column email varchar(50);

# FInd Students Older Than 20.
# ================================

select * from students
where age>20;

# Show Students from Bhilai.
# ======================================

select * from students 
where city = "Bhilai";

# Short Student By Age 
# =============================

select name from students 
order by age asc;

# Count Total Student.
# ===============================

select count(Student_id) from students;

# FInd Average Marks
# ===========================

select avg(marks) from enrollment;

# Find Maximum And Minimum Marks
# =========================================

select max(marks) from enrollment;

select min(marks) from enrollment;

# Use Group by to count Student in Each Course
# ================================================

select course_id, count(student_id) from enrollment 
group by course_id;

# Use having to Show Courses with more Than 2 Students
# =========================================================

select course_id, count(student_id) from enrollment 
group by course_id
having count(student_id)>2;

# ======================
# Joins 
# ======================

# Show Student_name And Course_name
# --------------------------------------

select students.name , courses.course_name from students
inner join enrollment
on students.student_id = enrollment.student_id
inner join courses 
on enrollment.course_id = courses.course_id;


# Show Student Name Course And Marks.
# ======================================

select students.name, courses.course_name, enrollment.marks from students
inner join enrollment
on students.student_id = enrollment.student_id
inner join courses
on enrollment.course_id = courses.course_id;


# Find the Top Three Students By Marks.
# ======================================================

select students.name, enrollment.marks from students 
inner join enrollment 
on students.student_id = enrollment.student_id
order by enrollment.marks desc
limit 3;

# Find The Second Heighest Marks.
# =============================================

select students.name, enrollment.marks from students
inner join enrollment 
on students.student_id = enrollment.student_id
order by enrollment.marks desc 
limit 1 offset 1;


# Display Student Whose Name Is Start With "A".
# ====================================================

select name from students
where name like "A%";

# Display Student Whose Name Is Start WIth "S".
# =====================================================

select name from students 
where name like "S%";

# ======================================================

# Use CASE to show:
# Marks ≥ 80 → Excellent
# 60–79 → Good
# Below 60 → Needs Improvement

# =======================================================

select students.name, enrollment.marks,
case 
when enrollment.marks >= 80 then "Excellent"
when enrollment.marks >= 60 and enrollment.marks <= 79 then "Good"
else "Needs Improvement"
end 
from students
inner join enrollment 
on students.student_id = enrollment.student_id;


select * from students 
where age > 18;     


--   test


































