CREATE DATABASE University;
USE University;
CREATE TABLE Student (    Student_ID INT PRIMARY KEY NOT NULL,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30),
    Address VARCHAR(50),
    Phone_No VARCHAR(15) UNIQUE,
    DOB DATE,
    Gender CHAR(1),
    Enrollment_date DATE
);
CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY NOT NULL,
    Course_Name VARCHAR(30) NOT NULL,
    Credits INT NOT NULL,
    Instructor_Name CHAR(30) NOT NULL,
    Semester INT NOT NULL,
    Location VARCHAR(20) NOT NULL
);
INSERT INTO Student (
        Student_ID,
        First_Name,
        Last_Name,
        Address,
        Phone_No,
        DOB,
        Gender,
        Enrollment_date
    )
VALUES (
        2020201,
        'Waris',
        'Hassan',
        'Faisalabad',
        '03244575845',
        '2000-09-07',
        'M',
        '2022-09-07'
    ),
    (
        2020202,
        'Amina',
        'Waqas',
        'Lahore',
        '03146675845',
        '2001-03-09',
        'F',
        '2021-03-09'
    ),
    (
        2020203,
        'Waqas',
        'Muhammad',
        'Multan',
        '03347875845',
        '2000-02-03',
        'M',
        '2020-02-03'
    ),
    (
        2020204,
        'Ali',
        'Mubeen',
        'Kasur',
        '03049875845',
        '2002-01-05',
        'M',
        '2022-01-05'
    ),
    (
        2020205,
        'Ansar',
        'Muhammad',
        'Sargodha',
        '03341275845',
        '2003-03-02',
        'M',
        '2023-03-02'
    ),
    (
        2020206,
        'Bhatti',
        'Khubaib',
        'Islamabad',
        '03242275845',
        '2004-07-01',
        'M',
        '2024-07-01'
    ),
    (
        2020207,
        'Sania',
        'Haris',
        'Peshawar',
        '03049975845',
        '2000-09-08',
        'F',
        '2020-09-08'
    );
INSERT INTO Courses (
        Course_ID,
        Course_Name,
        Credits,
        Instructor_Name,
        Semester,
        Location
    )
VALUES (34532, 'Database', 4, 'Ali', 5, 'Room-04'),
    (26473, 'PF', 3, 'Ansar', 1, 'Room-01'),
    (46852, 'ICT', 3, 'Bhatti', 2, 'Room-03'),
    (46826, 'DSA', 4, 'Sania', 6, 'Room-05'),
    (35744, 'DLD', 3, 'Amina', 3, 'Room-08'),
    (36778, 'AI', 3, 'Waqas', 7, 'Room-02');
ALTER TABLE Student
ADD COLUMN Email VARCHAR(30);
ALTER TABLE Student
    RENAME COLUMN Enrollment_date TO Entrance_Date;
ALTER TABLE Courses
MODIFY COLUMN Instructor_Name VARCHAR(30);
ALTER TABLE Courses DROP COLUMN Credits;