CREATE DATABASE school CHARACTER SET 'utf8';

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

