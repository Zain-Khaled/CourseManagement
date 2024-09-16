SELECT s.student_id , s.first_name + ' ' + s.last_name [Student Name]
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'SQL';