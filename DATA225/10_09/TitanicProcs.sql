DROP PROCEDURE IF EXISTS some_passengers;
DROP PROCEDURE IF EXISTS find_passengers;
DROP PROCEDURE IF EXISTS count_passengers;

DELIMITER $$

CREATE PROCEDURE some_passengers()
BEGIN
    SELECT *
    FROM passengers
    LIMIT 10;
END$$

CREATE PROCEDURE find_passengers(IN sex CHAR(6), 
                                 IN min_age DOUBLE, IN max_age DOUBLE, 
                                 IN survived CHAR(3), IN klass CHAR(3))
BEGIN
    SELECT p.name, p.age, p.survived, p.passenger_class
    FROM passengers AS p
    WHERE p.sex = sex
    AND   p.age BETWEEN min_age AND max_age
    AND   p.survived = survived
    AND   p.passenger_class = klass;
END$$

CREATE PROCEDURE count_passengers(IN sex CHAR(6), 
                                  IN min_age DOUBLE, IN max_age DOUBLE, 
                                  IN survived CHAR(3), IN klass CHAR(3), 
                                  OUT kount INT)
BEGIN
    SELECT count(*)
    INTO kount
    FROM passengers AS p
    WHERE p.sex = sex
    AND   p.age BETWEEN min_age AND max_age
    AND   p.survived = survived
    AND   p.passenger_class = klass;
END$$

DELIMITER ;
