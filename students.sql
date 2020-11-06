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