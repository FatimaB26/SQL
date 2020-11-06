-- BASE DE DONNEES
CREATE DATABASE school CHARACTER SET 'utf8';


-- Students
CREATE TABLE students (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    ville VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO students
VALUES (1, 'Veronique', 'Paris'),
        (2, 'Steeven', 'Lyon'),
        (3, 'Marc', 'Marseille'),
        (4, 'Nour', 'Lyon'),
        (5, 'Romain', 'Paris'),
        (6, 'Sophie', 'Paris');


-- LANGUAGES
CREATE TABLE languages (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO languages
VALUES (1, 'French'),
        (2, 'English'),
        (3, 'German'),
        (4, 'Spanish'),
        (5, 'Mandarin');


-- FAVORITES
CREATE TABLE favorites (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    class VARCHAR(30) NOT NULL,
    sport VARCHAR(30) NOT NULL,
    student_id VARCHAR(1) NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO favorites
VALUES (1, 'Maths', 'Cricket', 2),
        (2, 'Music', 'Hip-hop', 6),
        (3, 'Arts', 'Boxing', 1),
        (4, 'Literature', '	Tennis', 3),
        (5, 'Computer science', 'Tennis', 5),
        (6, 'Arts', 'Baseball', 4);


-- STUDENTS LANGUAGES
CREATE TABLE students_languages (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    student_id VARCHAR(1) NOT NULL,
    language_id VARCHAR(1) NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO students_languages
VALUES (1, 1, 1),
        (2, 1, 2),
        (3, 2, 1),
        (4, 2, 3),
        (5, 3, 1),
        (6, 4, 1),
        (7, 4, 2),
        (8, 4, 4),
        (9, 4, 5),
        (10, 5, 1),
        (11, 5, 5),
        (12, 6, 1),
        (13, 6, 2),
        (14, 6, 3);


-- RAPPORT LVL1 / REQUETES
SELECT * 
FROM students 
WHERE id=3;

SELECT * 
FROM students 
WHERE id=6;

SELECT name, ville 
FROM students
WHERE id=1;

SELECT name 
FROM students
WHERE id=2;

SELECT *
FROM students
WHERE ville='Paris';

SELECT name
FROM students
WHERE ville='Lyon';


-- RAPPORT LVL2 / REQUETES
SELECT *
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE favorites.student_id = 5;

SELECT name, sport
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE students.id = 4;

SELECT name , class
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE students.id = 1;

SELECT *
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE favorites.class = 'Music';

SELECT name
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE favorites.sport = 'Tennis';

SELECT name
FROM favorites
INNER JOIN students ON favorites.student_id = students.id
WHERE favorites.class = 'Music'
 OR favorites.class ='Arts';