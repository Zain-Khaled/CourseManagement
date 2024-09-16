SELECT TOP 1 c.course_name [Highest course],COUNT(e.student_id) [no. of enrollment]
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;