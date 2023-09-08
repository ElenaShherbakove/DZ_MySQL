/*
Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/

DROP FUNCTION IF EXISTS to_day;
DELIMITER //
CREATE FUNCTION to_day(time_sec INT)
RETURNS VARCHAR(100) reads sql data
BEGIN
	DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;
    SET days = time_sec/86400;
    SET hours = (time_sec-days*86400)/3600;
    SET minutes = (time_sec - (days*86400 + hours*3600))/60;
    SET seconds = time_sec - (days*86400 + hours*3600 + minutes*60);
	return concat(days,' дней ', hours, ' часов ', minutes,' мин.', seconds , ' сек.');
END //
DELIMITER ;
 select to_day(90065) AS "кол-во дней";
 
 -- Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10
 
DROP PROCEDURE IF EXISTS even_number;
DELIMITER //
CREATE PROCEDURE even_number(`start` INT, `end` INT)
BEGIN
    DECLARE i INT DEFAULT `start`;
    DECLARE rez TEXT DEFAULT NULL;
    WHILE  i <= `end` DO
        IF i%2 = 0 THEN
		IF rez IS NULL THEN
		SET rez = concat(i);
		ELSE
		SET rez = concat(rez, ', ', i);
		END IF;
        END IF;
        SET i = i + 1;
    END WHILE;
    SELECT rez AS "четные числа";
END //
DELIMITER ;
CALL even_number(1, 20);