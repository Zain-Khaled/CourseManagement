SELECT i.first_name+' '+ i.last_name [Instructor name], c.course_name
FROM Instructors i
JOIN Courses c ON i.instructor_id = c.instructor_id;