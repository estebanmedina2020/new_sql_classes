CREATE TABLE mentors
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(120),
    years_bcn INT NOT NULL,
    fav_prog_lang VARCHAR(20)
)
,

CREATE TABLE students
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    address VARCHAR (120),
    age INT NULL
)
,

CREATE TABLE classes
(
    id SERIAL PRIMARY KEY,
    mentors_id INT REFERENCES mentors(id),
    students_id INT REFERENCES students(id),
    topic VARCHAR (120) NOT NULL,
    class_date DATE NOT NULL,
    location NULL
);

INSERT INTO mentors
    (name, address, years_bcn, fav_prog_lang)
VALUES
    ('John Smith', 'Calle Doctor Trueta, 139', 5, 'JavaScript');
INSERT INTO mentors
    (name, address, years_bcn, fav_prog_lang)
VALUES
    ('Andrea Quaglia', 'Via Laietana, 181', 15, 'JavaScript');
INSERT INTO mentors
    (name, address, years_bcn, fav_prog_lang)
VALUES
    ('Mario Carvalho', 'Via Augusta, 563', 6, 'Python');
INSERT INTO mentors
    (name, address, years_bcn, fav_prog_lang)
VALUES
    ('Sandra Cougat', 'Gran Via De Les Corts Catalanes 111', 31, 'C++');
INSERT INTO mentors
    (name, address, years_bcn, fav_prog_lang)
VALUES
    ('Alberto Sartore', 'Carrer De Allada Vermell, 12', 7, 'JavaScript');


INSERT INTO students
    (name, address, age)
VALUES
    ('Javier Beltran', 'Pl. Sant Miquel, 33', 25);
INSERT INTO students
    (name, address, age)
VALUES
    ('Amanda Coss', 'Abaixadors, 11', 31);
INSERT INTO students
    (name, address, age)
VALUES
    ('Antonio Merchant', 'Actor Morano, 155', 42);
INSERT INTO students
    (name, address, age)
VALUES
    ('Marc Gimeno', 'Carrer De Aragó, 328', 29);
INSERT INTO students
    (name, address, age)
VALUES
    ('Michele Mendez', 'Agusti I Mila, 4', 33);
INSERT INTO students
    (name, address, age)
VALUES
    ('Laura Ruíz', 'Almagro, 77', 40);
INSERT INTO students
    (name, address, age)
VALUES
    ('Enric Romero', 'Artesania, 94', 27);
INSERT INTO students
    (name, address, age)
VALUES
    ('Daniel Di Giacomo', 'Assaonadors, 14', 35);


INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (1, 1, 'HTML', '2020-05-02', 'Glovo Office');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (1, 2, 'CSS', '2020-06-10', 'Carrer de Pujades, 94');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (2, 3, 'JavaScript I', '2020-06-22', 'Glovo Office');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (2, 4, 'JavaScript II', '2020-07-10', 'Glovo Office');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (3, 5, 'React', '2020-08-02', 'Glovo Office');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (3, 6, 'Node', '2020-08-18', 'Carrer de Pujades, 94');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (4, 7, 'MySQL I', '2020-09-01', 'Carrer de Pujades, 94');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (4, 8, 'MySQL II', '2020-09-20', 'Glovo Office');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (5, 9, 'Portfolio I', '2020-09-01', 'Carrer de Pujades, 94');

INSERT INTO classes
    (mentors_id, students_id, topic, class_date, location)
VALUES
    (5, 10, 'Portfolio II', '2020-09-20', 'Glovo Office');
