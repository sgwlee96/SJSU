DROP PROCEDURE IF EXISTS id_of;
DROP PROCEDURE IF EXISTS class_codes_of;
DROP PROCEDURE IF EXISTS classmates_of;

DELIMITER $$

CREATE PROCEDURE id_of(IN first_name VARCHAR(32), 
                       IN last_name VARCHAR(32),
                       OUT sid VARCHAR(5))
BEGIN
    SELECT id INTO sid
    FROM student
    WHERE first = first_name
    AND   last  = last_name;
END$$

CREATE PROCEDURE class_codes_of(IN first_name VARCHAR(32), 
                                IN last_name VARCHAR(32))
BEGIN
    CALL id_of(first_name, last_name, @sid);
    
    SELECT code
    FROM student, class, takes
    WHERE id = @sid
    AND   student.id = takes.student_id
    AND   class.code = takes.class_code;
END$$

CREATE PROCEDURE classmates_of(IN target_first_name VARCHAR(32), 
                               IN target_last_name VARCHAR(32))
BEGIN
    CALL id_of(target_first_name, target_last_name, @target_id);
    
    SELECT DISTINCT student.first, student.last, 
                    class.code, class.subject
    FROM student, takes, class
    WHERE class.code IN (
        SELECT class.code 
        FROM student, class, takes
        WHERE (student.id = @target_id)
        AND   (student.id = takes.student_id)
        AND   (takes.class_code = code)
    )
    AND (class.code = takes.class_code)
    AND (student.id = takes.student_id)
    AND (student.id != @target_id);
END$$

DELIMITER ;
