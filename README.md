# Student Course Management Database

This project involves creating a relational database for managing student courses. The database includes tables for students, courses, enrollments, and instructors. It demonstrates various SQL skills such as selection, filtering, aggregation, joins, subqueries, and more.

## Project Overview

The **Student Course Management** database system allows us to manage and query information about students, their courses, and instructors. The main objectives of this project are to practice and apply SQL operations, including CRUD (Create, Read, Update, Delete) operations, joins, subqueries, and advanced queries.

## Database Schema

The database consists of the following tables:
- **Students**: Stores information about students such as `student_id`, `first_name`, `last_name`, `email`, and `date_of_birth`.
- **Courses**: Contains course-related data like `course_id`, `course_name`, and `course_description`.
- **Instructors**: Stores instructor details such as `instructor_id`, `first_name`, `last_name`, and `email`.
- **Enrollments**: Links students and courses with details like `enrollment_id`, `student_id`, `course_id`, and `enrollment_date`.

## Project Requirements

1. **Table Creation**: Create tables with appropriate data types and constraints for the following:
   - Students
   - Courses
   - Instructors
   - Enrollments

2. **Insert Sample Data**:
   - Insert sample data for 10 students, 5 courses, 3 instructors, and 15 enrollments.

3. **Basic Queries**:
   - Select all students.
   - Select all courses.
   - Select all enrollments along with student names and course names.

4. **Advanced Queries**:
   - Select students enrolled in a specific course.
   - Find courses with more than 5 students.
   - Update a student's email.
   - Delete a course with no students enrolled.
   - Calculate the average age of students.
   - Find the course with the maximum enrollments.
   - Group courses and list the number of students enrolled.

5. **Join Queries**:
   - Join students with their enrolled courses.
   - List all instructors and the courses they teach.
   - Find students who are not enrolled in any course.

6. **Subqueries and Set Operations**:
   - Select students enrolled in more than one course.
   - Find courses taught by a specific instructor.
   - Select the top 3 students with the most enrollments.
   - Use `UNION` to combine the results of two different `SELECT` queries.

7. **Functions and Stored Procedures**:
   - Create a stored procedure to add a new student.
   - Create a function to calculate the age of a student from their date of birth.

8. **Aggregate Functions and Grouping**:
   - Calculate the total number of students.
   - Find the average, minimum, and maximum number of enrollments per course.

9. **Additional Tasks**:
   - Use `CASE` to categorize students by age.
   - Use `EXISTS` to find courses with at least one enrolled student.

## Examples of Queries

### 1. Categorizing Students by Age Using `CASE`
```sql
SELECT student_id, first_name, last_name, 
       CASE 
           WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) <= 20 THEN 'Teenager'
           WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN 21 AND 25 THEN 'Young Adult'
           ELSE 'Mature Adult'
       END AS age_category
FROM students;
