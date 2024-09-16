SELECT student_id,first_name , last_name
FROM Students
WHERE student_id NOT IN (SELECT DISTINCT student_id FROM Enrollments);