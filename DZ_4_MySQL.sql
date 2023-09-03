USE DZ_4_mysql;
-- Таблица:
-- https://drive.google.com/file/d/1PQn576YVakvlWrIgIjSP9YEf5id4cqYs/view?usp=sharing
-- 1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA
-- 2. Вывести на экран марку авто и количество AUTO не этой марки

-- Необязательные задачи ниже, выполняются по желанию:

-- Задание №3.
-- Вывести марку авто - а так же сколько авто такой марки в таблице , вывести записи где количество авто
-- такой марки больше 2, записи не должны дублироваться

-- Задание №4.
-- Вывести Марку и цвет автомобиля - имя и фамилию покупателя, для всех покупателей, которые живут в городе с населением больше 1 млн человек.

create table users
(
    id  int auto_increment primary key,
    login varchar(255) null,
    pass  varchar(255) null,
    male  tinyint      null
);
INSERT INTO users (login, pass, male) VALUES ('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO users (login, pass, male) VALUES ('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO users (login, pass, male) VALUES ('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2);
INSERT INTO users (login, pass, male) VALUES ('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1);
INSERT INTO users (login, pass, male) VALUES ('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2);
INSERT INTO users (login, pass, male) VALUES ('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
SELECT * FROM users;

create table clients
(
    id    int auto_increment primary key,
    login varchar(255) null,
    pass  varchar(255) null,
    male  tinyint      null
);
INSERT INTO clients (login, pass, male) VALUES ('alexander', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2);
INSERT INTO clients (login, pass, male) VALUES ('Dmitry', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2);
INSERT INTO clients (login, pass, male) VALUES ('Leonid', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Olga', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2);
INSERT INTO clients (login, pass, male) VALUES ('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1);
INSERT INTO clients (login, pass, male) VALUES ('Masha', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2);
INSERT INTO clients (login, pass, male) VALUES ('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);

SELECT * FROM clients;

CREATE TABLE  AUTO 
(       
	REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15)
);
INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111117,'BMW', 'СИНИЙ', date'2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

SELECT * FROM AUTO;

-- 1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

SELECT MARK, color, COUNT(color) AS 'number of cars' FROM AUTO
WHERE MARK = 'LADA'
GROUP BY color, mark 
UNION SELECT MARK, color, COUNT(color) AS 'number of cars' FROM AUTO
WHERE MARK = 'BMW'
GROUP BY color, mark;

--- 2. Вывести на экран марку авто и количество AUTO не этой марки
SELECT a1.MARK, count(a2.REGNUM)
FROM (
	SELECT DISTINCT MARK 
    FROM auto
    ) a1
LEFT JOIN auto a2
ON a1.MARK <> a2.MARK
GROUP BY a1.MARK;

--- Задание №3.
-- Вывести марку авто - а так же сколько авто такой марки в таблице 
-- Вывести записи где количество авто такой марки больше 2, записи не должны дублироваться

SELECT MARK, (COUNT(MARK) - 0) AS 'number of cars' FROM AUTO
GROUP BY MARK;