SELECT c.course_name,COUNT(e.student_id) [no. of enrollments]
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;