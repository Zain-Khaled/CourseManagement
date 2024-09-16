SELECT course_name
FROM Courses
WHERE instructor_id = ( SELECT instructor_id FROM Instructors WHERE first_name = 'Samir' );