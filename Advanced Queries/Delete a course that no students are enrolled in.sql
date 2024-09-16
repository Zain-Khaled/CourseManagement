DELETE FROM Courses 
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM Enrollments);