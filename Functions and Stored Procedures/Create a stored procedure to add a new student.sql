CREATE PROCEDURE AddStudent
@first_name VARCHAR(50),
@last_name VARCHAR(50),
@email VARCHAR(100),
@date_of_birth DATE
AS
BEGIN
    INSERT INTO Students (first_name, last_name, email, date_of_birth)
	VALUES (@first_name, @last_name, @email, @date_of_birth);
END;