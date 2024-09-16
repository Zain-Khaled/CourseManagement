SELECT e.enrollment_id, s.first_name + ' ' + s.last_name [Student Nmae],
c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;