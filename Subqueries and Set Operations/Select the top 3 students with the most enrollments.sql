SELECT TOP 3
s.student_id,s.first_name+ ' ' + s.last_name [Student name], COUNT(e.enrollment_id) [no. of enrollments]
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name