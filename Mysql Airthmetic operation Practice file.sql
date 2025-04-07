# and operator
select * from `courses_data (udanous)`
where `Course Name` = "Economics" and `Course Level`>= 300;

# or operator
select * from `courses_data (udanous)`
where `Course Name`= " Biology" OR Credits >=5;

# using Not operator 
select * from `student_information (udanous)`
where not age >=22;

# using Between operator
select `First Name`,`Last Name`, Age
from `student_information (udanous)`
where age between 19 and 22;


# like operator
select `First Name`,`Last Name`, Age
from `student_information (udanous)`
where `First Name` like 'R%';

# In operator 
select `First Name`,`Last Name`,`Department`
from `student_information (udanous)`
where `Department` in ('Science','Arts');

# database creation
create database filtering_database;

# using datatabase
use filtering_database;

# database creation
create database sample_database;

# using database
use sample_database;

# table creation 
CREATE TABLE cust_info ( 

    CustomersID INT AUTO_INCREMENT PRIMARY KEY, 

    CustomersNames VARCHAR(100), 

    Address VARCHAR(255), 

    Spending DECIMAL(10, 2) 

); 

# values inserting 
INSERT INTO cust_info (CustomersNames, Address, Spending) VALUES 

('John Doe', '123 Main St', 100.50), 

('Alice Smith', '456 Elm St', 200.75), 

('Bob Johnson', '789 Oak St', 150.25), 

('Emily Brown', '321 Pine St', 75.00), 

('Michael Davis', '654 Maple St', 300.00), 

('Sarah Wilson', '987 Cedar St', 50.50), 

('David Lee', '741 Birch St', 180.25), 

('Jessica Taylor', '852 Walnut St', 220.75), 

('Chris Evans', '369 Spruce St', 125.00), 

('Emma Thompson', '159 Fir St', 350.25); 

# fetching table
select * from cust_info;

# in operator
select `CustomersID`, `CustomersNames`
from `cust_info`
where `CustomersID` in (1,2,4);

# limit clause
select `CustomersID`, `CustomersNames`
from cust_info where `CustomersID` limit 3;

Fetching table
select * from cust_info;

# length function 
select `CustomersNames`, length(CustomersNames) AS Length_customer_Names
from `cust_info`;

# find first customers  names length
select  `CustomersNames`, length(CustomersNames) AS Length_customer_Names
from `cust_info`
 limit 1;
 
# concat function
select `CustomersID`, `CustomersNames`, concat(`CustomersID`," ",`CustomersNames`) AS CONCAT_NAMES
FROM cust_info;
 
 # Upper function
 SELECT `CustomersNames`, upper(`CustomersNames`) AS Upper_Name_case  FROM `cust_info`
 
 # Trim function 
 SELECT `CustomersNames`, trim(`CustomersNames`) AS Trim_Name  FROM `cust_info`
 
 # replace function
 SELECT `CustomersNames`, replace(`CustomersNames`,"John Doe", "danial doe") AS Replace_Name  FROM `cust_info`
 
 use sample_database;
use sample_schema;
select * from `courses_data (udanous)`
select * from `enrollments_data (udanous)`
select * from `student_information (udanous)`

select  MAX(`Course Level`) As maximum_course_level 
from `courses_data (udanous)`

select sum(`Course Level`) As sum_of_course_level 
from `courses_data (udanous)`

select `Course Level`,`Credits`,
`Course Level` div Credits As divide_function 
from `courses_data (udanous)`;

select avg(`Course Level`) As Avg_of_course_level 
from `courses_data (udanous)`

select count(`Student ID`) as student_count from `enrollments_data (udanous)`;

select min(`Course Level`) AS Min_of_course_level from `courses_data (udanous)`;

use sample_database;
select * from `cust_info`;

update `cust_info` set `Spending`= -75 where CustomersID = 4;

select abs(`Spending`) as Conveting_In_Positve_Value from cust_info;


