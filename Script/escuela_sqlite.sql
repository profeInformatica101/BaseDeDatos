CREATE TABLE Profesor (
    id_profesor INTEGER PRIMARY KEY,
    nombre TEXT,
    apellido TEXT
);

CREATE TABLE Curso (
    id_curso INTEGER PRIMARY KEY,
    nombre_curso TEXT,
    anio_escolar TEXT
);

CREATE TABLE Asignatura (
    id_asignatura INTEGER PRIMARY KEY,
    nombre_asignatura TEXT,
    descripcion TEXT
);

CREATE TABLE Imparte (
    id_profesor INTEGER,
    id_asignatura INTEGER,
    id_curso INTEGER,
    PRIMARY KEY (id_profesor, id_asignatura, id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor),
    FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Tutor (
    id_curso INTEGER,
    id_profesor INTEGER,
    PRIMARY KEY (id_curso, id_profesor),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
);

CREATE TABLE Alumno (
    id_alumno INTEGER PRIMARY KEY,
    nombre TEXT,
    apellido TEXT,
    email TEXT,
    id_curso INTEGER,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

-- Datos de prueba para Curso
INSERT INTO Curso (id_curso, nombre_curso, anio_escolar) VALUES
(1, '2º ESO', '2022/2023'),
(2, '3º ESO', '2022/2023'),
(3, '1º Bachillerato', '2022/2023'),
(4, '2º Bachillerato', '2022/2023');

-- Datos de prueba para Asignatura
INSERT INTO Asignatura (id_asignatura, nombre_asignatura, descripcion) VALUES
(1, 'Informática', 'Introducción a la informática'),
(2, 'Matemáticas', 'Álgebra y geometría'),
(3, 'Lengua', 'Gramática y literatura'),
(4, 'Inglés', 'Comprensión oral y escrita'),
(5, 'Filosofía', 'Pensamiento crítico'),
(6, 'Cocina', 'Elaboración de platos'),
(7, 'Economía', 'Conceptos básicos de economía');

-- Datos de prueba para Profesor
INSERT INTO Profesor (id_profesor, nombre, apellido) VALUES
(1, 'Ada', 'Lovelace'),
(2, 'Alan', 'Turing'),
(3, 'Grace', 'Hopper'),
(4, 'Claude', 'Shannon'),
(5, 'Donald', 'Knuth'),
(6, 'Barbara', 'Liskov'),
(7, 'John', 'Backus'),
(8, 'Tim', 'Berners-Lee');

-- Datos de prueba para Imparte
INSERT INTO Imparte (id_profesor, id_asignatura, id_curso) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(1, 2, 2),
(2, 1, 2),
(3, 3, 2),
(4, 5, 2),
(5, 4, 2),
(6, 6, 2),
(7, 7, 2),
(1, 1, 3),
(2, 3, 3),
(3, 2, 3),
(4, 4, 3),
(5, 5, 3),
(6, 7, 3),
(7, 6, 3),
(1, 2, 4),
(2, 1, 4),
(3, 4, 4),
(4, 3, 4),
(5, 5, 4),
(6, 6, 4),
(7, 7, 4);

-- Tutor
INSERT INTO Tutor (id_curso, id_profesor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO Alumno (nombre, apellido, email, id_curso) VALUES
('Sara', 'Gutiérrez', 'sara@gmail.com', 1),
('Pedro', 'Martínez', 'pedro@gmail.com', 1),
('Lucía', 'Fernández', 'lucia@gmail.com', 1),
('Sergio', 'López', 'sergio@gmail.com', 1),
('María', 'García', 'maria@gmail.com', 2),
('Javier', 'Ruiz', 'javier@gmail.com', 2),
('Paula', 'Rodríguez', 'paula@gmail.com', 2),
('David', 'González', 'david@gmail.com', 2),
('Laura', 'Pérez', 'laura@gmail.com', 3),
('Marcos', 'Fernández', 'marcos@gmail.com', 3),
('Lucas', 'Gutiérrez', 'lucas@gmail.com', 3),
('Isabel', 'López', 'isabel@gmail.com', 3),
('Santiago', 'Martínez', 'santiago@gmail.com', 4),
('Julia', 'Rodríguez', 'julia@gmail.com', 4),
('Ana', 'García', 'ana@gmail.com', 4),
('Manuel', 'González', 'manuel@gmail.com', 4);
