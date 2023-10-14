DROP PROCEDURE IF EXISTS insert_date;
DROP PROCEDURE IF EXISTS while_proc;
DROP PROCEDURE IF EXISTS repeat_proc;
DROP PROCEDURE IF EXISTS loop_proc;

DELIMITER $$

CREATE PROCEDURE insert_date(IN method VARCHAR(16), IN full_date DATE, 
                             IN day_of_week_name VARCHAR(9))
BEGIN
    INSERT INTO dates(method, full_date, day_of_week_name,
                      day_number, month_number, year_number)
    VALUES (method, full_date, day_of_week_name,
            EXTRACT(DAY   FROM full_date),
            EXTRACT(MONTH FROM full_date),
            EXTRACT(YEAR  FROM full_date));
END$$

CREATE PROCEDURE while_proc(IN starting_date DATE, 
                            IN starting_day_of_week INT)
BEGIN
    DECLARE this_date        DATE DEFAULT starting_date;
    DECLARE day_of_week      INT  DEFAULT starting_day_of_week;
    DECLARE day_number       INT  DEFAULT 1;
    DECLARE day_of_week_name VARCHAR(9);
    
    WHILE day_number <= 31 DO
        IF day_of_week = 0
            THEN SET day_of_week_name = 'Sunday';
        ELSEIF day_of_week = 1
            THEN SET day_of_week_name = 'Monday';
        ELSEIF day_of_week = 2
            THEN SET day_of_week_name = 'Tuesday';
        ELSEIF day_of_week = 3
            THEN SET day_of_week_name = 'Wednesday';
        ELSEIF day_of_week = 4
            THEN SET day_of_week_name = 'Thursday';
        ELSEIF day_of_week = 5
            THEN SET day_of_week_name = 'Friday';
        ELSE
            SET day_of_week_name = 'Saturday';
            SET day_of_week = -1;
        END IF;
        
        CALL insert_date('while', this_date, day_of_week_name);

        SET day_number   = day_number  + 1;
        SET day_of_week  = day_of_week + 1;
        SET this_date    = DATE_ADD(this_date, INTERVAL 1 DAY);
    END WHILE;
END$$

CREATE PROCEDURE repeat_proc(IN starting_date DATE, 
                             IN starting_day_of_week INT)
BEGIN
    DECLARE this_date        DATE DEFAULT starting_date;
    DECLARE day_of_week      INT  DEFAULT starting_day_of_week;
    DECLARE day_number       INT  DEFAULT 1;
    DECLARE day_of_week_name VARCHAR(9);
    
    REPEAT
        IF day_of_week = 0
            THEN SET day_of_week_name = 'Sunday';
        ELSEIF day_of_week = 1
            THEN SET day_of_week_name = 'Monday';
        ELSEIF day_of_week = 2
            THEN SET day_of_week_name = 'Tuesday';
        ELSEIF day_of_week = 3
            THEN SET day_of_week_name = 'Wednesday';
        ELSEIF day_of_week = 4
            THEN SET day_of_week_name = 'Thursday';
        ELSEIF day_of_week = 5
            THEN SET day_of_week_name = 'Friday';
        ELSE
            SET day_of_week_name = 'Saturday';
            SET day_of_week = -1;
        END IF;

        CALL insert_date('repeat', this_date, day_of_week_name);

        SET day_number   = day_number  + 1;
        SET day_of_week  = day_of_week + 1;
        SET this_date    = DATE_ADD(this_date, INTERVAL 1 DAY);
    UNTIL day_number > 31
    END REPEAT;
END$$

CREATE PROCEDURE loop_proc(IN starting_date DATE, 
                           IN starting_day_of_week INT)
BEGIN
    DECLARE this_date        DATE DEFAULT starting_date;
    DECLARE day_of_week      INT  DEFAULT starting_day_of_week;
    DECLARE day_number       INT  DEFAULT 1;
    DECLARE day_of_week_name VARCHAR(9);
    
    date_loop: LOOP
        CASE day_of_week
            WHEN 0 THEN SET day_of_week_name = 'Sunday';
            WHEN 1 THEN SET day_of_week_name = 'Monday';
            WHEN 2 THEN SET day_of_week_name = 'Tuesday';
            WHEN 3 THEN SET day_of_week_name = 'Wednesday';
            WHEN 4 THEN SET day_of_week_name = 'Thursday';
            WHEN 5 THEN SET day_of_week_name = 'Friday';
            ELSE
                SET day_of_week_name = 'Saturday';
                SET day_of_week = -1;
        END CASE;
        
        CALL insert_date('loop', this_date, day_of_week_name);
        
        IF day_number = 31 THEN LEAVE date_loop; END IF;

        SET day_number   = day_number  + 1;
        SET day_of_week  = day_of_week + 1;
        SET this_date    = DATE_ADD(this_date, INTERVAL 1 DAY);
    END LOOP;
END$$

DELIMITER ;
