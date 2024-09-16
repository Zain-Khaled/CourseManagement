SELECT course_id, course_name
FROM courses c
WHERE EXISTS (
    SELECT 1
    FROM enrollments e
    WHERE e.course_id = c.course_id
    AND e.enrollment_date IS NOT NULL);
