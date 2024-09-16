SELECT
   AVG([no. of enrollments]) AS [avg_enrollments],
   MIN([no. of enrollments]) AS [min_enrollments],
   MAX([no. of enrollments]) AS [max_enrollments]
FROM (SELECT COUNT(*) AS [no. of enrollments] FROM Enrollments GROUP BY course_id) AS [enrollments / course ];