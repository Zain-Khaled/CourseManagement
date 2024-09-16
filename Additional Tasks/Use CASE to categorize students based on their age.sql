SELECT student_id, first_name, last_name, 
       CASE 
           WHEN DATEDIFF(YEAR, date_of_birth, GETDATE()) <= 20 THEN 'Teenager'
           WHEN DATEDIFF(YEAR, date_of_birth, GETDATE()) BETWEEN 21 AND 25 THEN 'Young Adult'
           ELSE 'Mature Adult'
       END AS age_category
FROM Students;
