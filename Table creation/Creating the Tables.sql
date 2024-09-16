--  Students Table
CREATE TABLE StudentCourseManagement.dbo.Students (
student_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
date_of_birth DATE
);
-- Instructors Table
CREATE TABLE StudentCourseManagement.dbo.Instructors (
instructor_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100)
);
-- Courses Table 
CREATE TABLE StudentCourseManagement.dbo.Courses (
course_id INT IDENTITY(1,1) PRIMARY KEY,
course_name VARCHAR(100),
course_description TEXT,
instructor_id INT FOREIGN KEY REFERENCES Instructors(instructor_id) 
);
-- Enrollments Table
CREATE TABLE StudentCourseManagement.dbo.Enrollments (
enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
student_id INT FOREIGN KEY (student_id) REFERENCES Students(student_id),
course_id INT FOREIGN KEY (course_id) REFERENCES Courses(course_id),
enrollment_date DATE
);