-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-05-13 23:25:50.944

-- tables
-- Table: classes
CREATE TABLE classes (
    id serial  NOT NULL,
    name varchar(64)  NOT NULL,
    CONSTRAINT classes_pk PRIMARY KEY (id)
);

-- Table: students
CREATE TABLE students (
    id serial  NOT NULL,
    first_name varchar(64)  NOT NULL,
    last_name varchar(64)  NOT NULL,
    current_grade_level smallint  NOT NULL,
    CONSTRAINT students_pk PRIMARY KEY (id)
);

-- Table: students_classes
CREATE TABLE students_classes (
    id serial  NOT NULL,
    student_id int  NOT NULL,
    class_id int  NOT NULL,
    grade_received char(1)  NOT NULL,
    semester_taken varchar(16)  NOT NULL,
    CONSTRAINT students_classes_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: students_classes_classes (table: students_classes)
ALTER TABLE students_classes ADD CONSTRAINT students_classes_classes
    FOREIGN KEY (class_id)
    REFERENCES classes (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: students_classes_students (table: students_classes)
ALTER TABLE students_classes ADD CONSTRAINT students_classes_students
    FOREIGN KEY (student_id)
    REFERENCES students (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;


-- insert students

INSERT INTO students(first_name, last_name, current_grade_level)
VALUES 
    ('Bob', 'Corker', 10),
    ('Steve', 'Irwin', 9),
    ('Mike', 'Moore', 11),
    ('Robert', 'Downey', 9),
    ('John', 'Smith', 12),
    ('Marsha', 'Green', 9),
    ('Beth', 'Andersen', 11),
    ('Kirsten', 'Davis', 11),
    ('Heidi', 'Johnson', 11)

-- insert classes

INSERT INTO classes (name)
VALUES 
    ('Math 101'),
    ('Science 101'),
    ('Biology 200'),
    ('English 2'),
    ('French 1'),
    ('Chemistry 1'),
    ('Physics 2')

-- insert some courses

INSERT INTO students_classes (student_id, class_id, grade_received, semester_taken)
VALUES 
    (1, 1, 'A', 'Fall 2016'),
    (1, 2, 'A', 'Fall 2016'),
    (1, 3, 'A', 'Fall 2016'),
    (1, 6, 'A', 'Fall 2016'),
    (2, 1, 'B', 'Fall 2016'),
    (2, 2, 'A', 'Fall 2016'),
    (2, 3, 'C', 'Fall 2016'),
    (3, 1, 'B', 'Fall 2017'),
    (3, 2, 'C', 'Fall 2017'),
    (4, 2, 'C', 'Fall 2017'),
    (4, 3, 'A', 'Fall 2017'),
    (5, 1, 'B', 'Fall 2017'),
    (5, 5, 'A', 'Fall 2017'),
    (5, 6, 'B', 'Fall 2017'),
    (6, 1, 'A', 'Spring 2018'),
    (6, 3, 'B', 'Spring 2018'),
    (6, 4, 'C', 'Spring 2018'),
    (7, 1, 'B', 'Spring 2018'),
    (7, 3, 'A', 'Spring 2018'),
    (7, 5, 'B', 'Spring 2018'),
    (8, 1, 'A', 'Spring 2018'),
    (8, 3, 'A', 'Spring 2018'),
    (8, 5, 'B', 'Spring 2018'),
    (9, 1, 'B', 'Spring 2018'),
    (9, 3, 'B', 'Spring 2018'),
    (9, 4, 'B', 'Spring 2018'),
    (9, 6, 'C', 'Spring 2018'),
    (9, 7, 'A', 'Spring 2018')
    

-- End of file.

