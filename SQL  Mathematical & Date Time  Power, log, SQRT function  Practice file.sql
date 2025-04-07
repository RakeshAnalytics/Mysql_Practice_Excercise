# Power function
select `Credits`, 
POWER(`Credits`,2) AS POWER_OF_Credits
from `courses_data (udanous)`;

# use database
use student_data;

# table Creation of exam_info
CREATE TABLE exam_info ( 

    StudentID INT AUTO_INCREMENT PRIMARY KEY, 

    FirstNames VARCHAR(50), 

    LastNames VARCHAR(50), 

    Scores integer 

); 

# values inserting in exam_info table 
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES 

('John', 'Doe',  80), 

('Alice', 'Smith',  75), 

('Bob', 'Johnson',  78), 

('Emily', 'Brown',  60), 

('Michael', 'Davis', 86), 

('Sarah', 'Wilson', 90), 

('David', 'Lee', 75), 

('Jessica', 'Taylor', 75), 

('Chris', 'Evans',  55), 

('Emma', 'Thompson',  67);   

# fetching table
select * from exam_info;

# power function
select `Scores`, 
power(`Scores`,3) AS Cube_scores 
from exam_info;

# use database
use sample_database;

# fetching table
select * from cust_info;

# Round function 
select `Spending`, 
round(`Spending`,0) AS Round_of_Spending 
from cust_info;

# use database
use student_data;

# table creation of exam_info_2
CREATE TABLE exam_info_2 ( 

    StudentID INT AUTO_INCREMENT PRIMARY KEY, 

    FirstNames VARCHAR(50), 

    LastNames VARCHAR(50), 

    Scores float 

); 


# values inserting in exam_info_2 table
INSERT INTO exam_info_2 (FirstNames, LastNames, Scores) VALUES 

('John', 'Doe',  80.345544), 

('Alice', 'Smith',  75.6355), 

('Bob', 'Johnson',  78.5364565), 

('Emily', 'Brown',  60.3565), 

('Michael', 'Davis', 86.5353656), 

('Sarah', 'Wilson', 90.535464), 

('David', 'Lee', 75.567765), 

('Jessica', 'Taylor', 75.34242), 

('Chris', 'Evans',  55.09098), 

('Emma', 'Thompson',  67.34535); 

# showing the table 
select * from exam_info_2;

# round function
select `Scores`, 
round(`Scores`,2) As round_up_Scores 
from exam_info_2;

# table showing
select * from exam_info_2;

# use database
use sample_schema;

# show table 
select * from `courses_data (udanous)`;

# SQRT Function - convert values into squre root values
select `Credits`, 
sqrt(`Credits`) as Squre_root_of_credits 
from `courses_data (udanous)`;

# log function - converting values into logairthmetic values 
select `Credits`, 
log(`Credits`) as log_of_credits 
from `courses_data (udanous)`;

# SQRT Function - convert values into squre root values
select `Scores`, 
sqrt(`Scores`) As Transformed_scores 
from exam_info_2;

# use database
use student_data;

# alter function for adding new column 
alter table exam_info_2 add column Exam_date date;

# update function for updating new values 
update exam_info_2 set Exam_date = '2024-01-01' where StudentID = 1;
update exam_info_2 set Exam_date = '2024-01-02' where StudentID = 2;
update exam_info_2 set Exam_date = '2024-01-03' where StudentID = 3;
update exam_info_2 set Exam_date = '2024-01-04' where StudentID = 4;
update exam_info_2 set Exam_date = '2024-01-05' where StudentID = 5;
update exam_info_2 set Exam_date = '2024-01-01' where StudentID = 6;
update exam_info_2 set Exam_date = '2024-02-01' where StudentID = 7;
update exam_info_2 set Exam_date = '2024-02-02' where StudentID = 8;
update exam_info_2 set Exam_date = '2024-03-01' where StudentID = 9;
update exam_info_2 set Exam_date = '2024-04-01' where StudentID = 10;

# show table
select * from exam_info_2;

# date_format function 
select `Exam_date`, 
date_format(`Exam_date`,'%d-%b-%y') AS DATE_FORMAT_CHANGE
 FROM exam_info_2;

# Table creation of Purchase table 
CREATE TABLE purchases ( 

   CustomerID INT, 

   PurchaseDate DATE, 

   ReturnDate DATE 

); 

# inserting values into purchase table 
INSERT INTO purchases (CustomerID, PurchaseDate, ReturnDate) VALUES 

(1, '2024-01-01', '2024-01-05'), 

(2, '2024-01-02', '2024-01-06'), 

(3, '2024-01-03', '2024-01-07'), 

(4, '2024-01-04', '2024-01-08'), 

(5, '2024-01-05', '2024-01-09'), 

(6, '2024-01-06', '2024-01-10'), 

(7, '2024-01-07', '2024-01-11'), 

(8, '2024-01-08', '2024-01-12'), 

(9, '2024-01-09', '2024-01-13'), 

(10, '2024-01-10', '2024-01-14'); 


# show table 
select * from purchases;

# assignment question 
# Write necessary code to format the dates in PurchaseDate column like this "24-January-1st". Store the output in FormatedDate. 
SELECT PurchaseDate, 
DATE_FORMAT(PurchaseDate, '%y-%M-%d') AS format_date 
FROM purchases;
 
# datediff function 
select `PurchaseDate`, `ReturnDate`, 
datediff(`PurchaseDate`,`ReturnDate`) AS date_difference 
from purchases;

# day, month, year function 
 select day(`PurchaseDate`) as Purchase_day, 
 month(`PurchaseDate`) as Purchase_month, 
 year(`PurchaseDate`) as Purchase_year 
 from purchases;

# assignment question 
# Write necessary code to extract the years from the column ReturnDate. Store the output in YearsData. 
select * from purchases;
select ReturnDate, 
year(ReturnDate) as years_data 
from purchases;




