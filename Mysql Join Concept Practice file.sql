# using database
USE sample_schema;

# Group BY function 
SELECT * FROM `courses_data (udanous)`
SELECT `Course Name`,SUM(Credits) AS Total_Credit
FROM `courses_data (udanous)`
GROUP BY `Course Name`;

# Fetching tables data
SELECT * FROM `courses_data (udanous)`;
SELECT * FROM `enrollments_data (udanous)`;
SELECT * FROM `student_information (udanous)`;

# Inner Join 
SELECT S.`First Name`, S.`Last Name`, S.`Age`, E.`Semester`, S.`GPA`, E.`Grade` 
FROM `student_information (udanous)` S
INNER JOIN 
`enrollments_data (udanous)` E
ON S.`Student ID`= E.`Student ID`;

# Left Join
SELECT S.`First Name`, S.`Last Name`, S.`Age`, E.`Semester`, S.`GPA`, E.`Grade` 
FROM `student_information (udanous)` S
LEFT JOIN 
`enrollments_data (udanous)` E
ON S.`Student ID`= E.`Student ID`;

# Right Join
SELECT S.`First Name`, S.`Last Name`, S.`Age`, E.`Semester`, S.`GPA`, E.`Grade` 
FROM `student_information (udanous)` S
RIGHT JOIN 
`enrollments_data (udanous)` E
ON S.`Student ID`= E.`Student ID`;

# Using Database
USE student_data;

# fetching table data
select * from exam_info_2;

# Cross Join
SELECT E1. StudentID, E1.FirstNames, E1.LastNames, E1.Scores,
E2.Exam_date
FROM exam_info E1
CROSS JOIN 
exam_info_2 E2
ON E1.StudentID = E2.StudentID;

# using database
USE sample_schema;

# fetching table data
SELECT * FROM `courses_data (udanous)`
SELECT * FROM `enrollments_data (udanous)`
SELECT * FROM  `student_information (udanous)`

# Having function
SELECT  Age, COUNT(*) AS Total_count
FROM `student_information (udanous)`
GROUP BY Age 
HAVING COUNT(*) > 1;

# Exist Function 
SELECT `First Name`,`Last Name`
FROM `student_information (udanous)`
WHERE EXISTS ( SELECT `First Name`,`Last Name` FROM `student_information (udanous)`
WHERE GPA >3.5);

# Any Function 
SELECT * FROM `student_information (udanous)`
WHERE Age > ANY ( SELECT Age FROM `student_information (udanous)`
WHERE Age BETWEEN 20 AND 25 )


# using database
USE student_data;

# Creating table
CREATE TABLE student_info ( 

    StudentID INT PRIMARY KEY, 

    FirstNames VARCHAR(50), 

    LastNames VARCHAR(50) 

); 

# inserting values
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES 

(1, 'John', 'Doe'), 

(2, 'Alice', 'Smith'), 

(3, 'Bob', 'Johnson'), 

(4, 'Emily', 'Brown'), 

(5, 'Michael', 'Davis'), 

(6, 'Sarah', 'Wilson'), 

(7, 'David', 'Lee'), 

(8, 'Jessica', 'Taylor'), 

(9, 'Chris', 'Evans'), 

(10, 'Emma', 'Thompson'); 


SELECT * FROM student_info;
SELECT * FROM exam_info;

-- Write necessary code to filter all the columns of student_info table 
-- where StudentID from both tables equals to each other AND Scores is greater than 75. 
-- That means you are finding the information of the students who scored more than 75 in 
-- the exam. 

SELECT S.StudentID, S.FirstNames, S.LastNames,
E.Scores
FROM student_info S
INNER JOIN 
exam_info E
ON S.StudentID = E.StudentID
WHERE E.Scores > 75;


-- Write necessary code to filter all the columns of student_info table where StudentID 
-- from student_info table equals to that of exam_info table WHERE Scores is greater than 75. 
-- That means you are finding the information of the students who scored more than 75 in the 
-- exam but using ANY sql method. 

SELECT S.StudentID, S.FirstNames, S.LastNames,
E.Scores
FROM student_info S
JOIN 
exam_info E
ON S.StudentID = E.StudentID
WHERE E.Scores = ANY (SELECT E.Scores FROM exam_info WHERE E.Scores > 75);

# fetching table data
SELECT * FROM exam_info;


# Case Function 
SELECT * ,
CASE 
WHEN Scores >= 80 THEN 'A'
WHEN Scores <=80 AND Scores >=60 THEN 'B'
ELSE 'C'
END AS 'Grade'
FROM exam_info;


# use database
USE Sample_Schema;

# Procedure function
-- SQL code for deriving students exam outcome
SELECT *,
CASE
 WHEN GPA > 3 THEN 'PASSED'
 WHEN GPA BETWEEN 2.5 AND 3 THEN 'HOLD'
 ELSE 'FAILED'
END AS Outcome
FROM `student_information (udanous)`;

DELIMITER //

CREATE PROCEDURE student_outcomes()
  BEGIN
    SELECT *,
      CASE
        WHEN GPA > 3 THEN 'PASSED'
        WHEN GPA BETWEEN 2.5 AND 3 THEN 'HOLD'
	  ELSE 'FAILED'
	END AS Outcome
    FROM `student_information (udanous)`;
END//

DELIMITER ; 

CALL student_outcomes()




