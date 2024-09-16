SELECT s.student_id,s.first_name+' ' + s.last_name [Student name]
FROM Students s
WHERE ( SELECT COUNT(*) FROM Enrollments e WHERE e.student_id = s.student_id ) >1; 