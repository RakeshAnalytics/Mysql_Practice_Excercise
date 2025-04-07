
# creating database 
create database sample_database;

# using database
use sample_database;

# alter database 
Alter database sample_database char set ascii collate ascii_general_ci encryption = "y"  read only = 0;


# show database
show databases;

# drop database
drop database sample_database;

# creating database
create database sample_schema ;

# using database
use sample_schema

# fetching all rows and columns 
SELECT * FROM sample_schema.`courses_data (udanous)`;

# fetching individual column 
SELECT Credits FROM sample_schema.`courses_data (udanous)`;

# show distimct department values
SELECT DISTINCT Department from sample_schema.`student_information (udanous)`;

# using As alias
SELECT  Department AS Dep from sample_schema.`student_information (udanous)`;

# using As alias 
SELECT GPA AS Grade_Point_Average FROM sample_schema.`student_information (udanous)`;

# fetching data whose age older than 20
Select Gender, Department, GPA, Age 
From sample_schema.`student_information (udanous)`
WHERE Age > 20;

# using alias in join table
select F.`First Name`, C.`Course Name`, G.Grade
from sample_schema.`student_information (udanous)` AS F, 
     sample_schema.`courses_data (udanous)` AS C, 
     sample_schema.`enrollments_data (udanous)` AS G;
     
# using database
USE student_data;

# creating student_marksheet table 
CREATE TABLE Student_Marksheet ( 
    std_id INT PRIMARY KEY, 
    Name VARCHAR(50) NOT NULL, 
    subject VARCHAR(50), 
    `Percentage` DECIMAL(5,2), 
    Grade VARCHAR(10)
);

# inserting values in student_marksheet
insert into Student_Marksheet ( std_id, Name, Subject, Percentage, Grade) 
values ( 101, "Rishabh", "Hindi", 62.50, "B"), 
(102, "Ashish", "Math", 75.50 ,"A") , 
(103, "Sachin", "Scinence", 78.45, "A"), 
(104, "Rohit", "English", 62.10, "B"), 
(105, "Nilesh", "Hindi", 45.78, "C")

# fetching table of student_marksheet
select * from student_Marksheet;

# updating subject 
update student_Marksheet set Subject = "Hindi", subject = "Geography" where std_id = 105;

# deleting rows
delete from student_Marksheet Where std_id = 105;

# using truncate delete the data
truncate student_Marksheet;

# using drop deleting entire dataset with header
drop table student_Marksheet;

# table creation
create table table_check ( id int primary key , Gender varchar(255) Not Null, Age int, salary int check (salary >=10000))



# inserting values
insert into  table_check(id, Gender, Age, Salary ) values ( 1001, "Male", 25, 25000),(1002,"Female",22, 15000), (1003,"Male", 26, 28000);

# adding column using alter function
alter table student_Marksheet add column result varchar(50);

# rename column name using alter 
alter table student_Marksheet rename column Name to Student_Name;

#drop column using alter
alter table student_Marksheet drop column result;

# fetching details
select * from table_check;

# table creation 
create table table_constraint (std_id int, std_Name varchar(255), age int)

# values inseting 
insert into table_constraint(std_id, std_Name, age) values 
(1, "Alex", 18.43),
(2,"Akash",27.56),
(3, "Ramish", 21.45);

# fetching details 
select * from table_constraint;

# table creation
create table table_fk ( Course_id int, course_Name varchar(255))

# values inserting 
insert into table_fk (course_id, course_Name) values ( 11, "English"), (12,"Math"),(13,"Language")

# table creation
create table table_pk (std_id int, course_id int, std_Name varchar(255), Age int)

# values inserting 
insert into table_pk( std_id, course_id, std_Name, Age) values (1, 11, "Alex", 18.43),
(2, 12, "Akash", 27.56),
(3, 13, "Ramish", 21.45);

# drop primary key
alter table table_check drop primary key; 

# table creation 
create table drop_constraint ( std_id int, std_Name varchar (255), Age int)

# values inserting 
insert into drop_constraint( std_id, std_Name, Age)
 Values (1, "Alex", 18.43),
(2, "Akash", 27.56), 
(3, "Ramish", 21.45)
insert into drop_constraint( std_id, std_Name, Age) values ( 4, " ", 50.12)

# adding constraint
alter table drop_constraint add constraint primary key (std_id);

# drop constraint
alter table drop_constraint drop primary key; 

# find the null values from table using null function 
select * from drop_constraint
where std_Name is  null;

# fetching not null values from table using not null function
select * from drop_constraint
where std_Name is  not null;







