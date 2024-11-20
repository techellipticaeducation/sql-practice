DELIMITER //
CREATE PROCEDURE PopulateAthletes()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 500 DO
        INSERT INTO Athletes (FullName, Gender, DateOfBirth, CountryID)
        VALUES (
            CONCAT('Athlete_', i),
            IF(i MOD 2 = 0, 'Male', 'Female'),
            DATE_ADD('1990-01-01', INTERVAL FLOOR(RAND() * 10000) DAY),
            FLOOR(1 + RAND() * 8)
        );
        SET i = i + 1;
    END WHILE;
END//
DELIMITER ;

CALL PopulateAthletes();
