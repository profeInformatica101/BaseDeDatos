CREATE DATABASE IF NOT EXISTS escuela;

USE escuela;

CREATE TABLE curso (
    id_curso INT NOT NULL AUTO_INCREMENT,
    nombre_curso VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_curso)
);

CREATE TABLE profesor (
    id_profesor INT NOT NULL AUTO_INCREMENT,
    nombre_profesor VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_profesor)
);

CREATE TABLE asignatura (
    id_asignatura INT NOT NULL AUTO_INCREMENT,
    nombre_asignatura VARCHAR(50) NOT NULL,
    id_profesor INT NOT NULL,
    id_curso INT NOT NULL,
    PRIMARY KEY (id_asignatura),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

CREATE TABLE alumno (
    id_alumno INT NOT NULL AUTO_INCREMENT,
    nombre_alumno VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    id_curso INT NOT NULL,
    id_tutor INT NOT NULL,
    PRIMARY KEY (id_alumno),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    FOREIGN KEY (id_tutor) REFERENCES profesor(id_profesor)
);

INSERT INTO curso (nombre_curso) VALUES ('Matemáticas');
INSERT INTO curso (nombre_curso) VALUES ('Historia');
INSERT INTO curso (nombre_curso) VALUES ('Ciencias');
INSERT INTO curso (nombre_curso) VALUES ('Idiomas');

INSERT INTO profesor (nombre_profesor) VALUES ('Juan Pérez');
INSERT INTO profesor (nombre_profesor) VALUES ('María Rodríguez');
INSERT INTO profesor (nombre_profesor) VALUES ('Carlos Gómez');

INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Cálculo', 1, 1);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Álgebra', 1, 1);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Historia del arte', 2, 2);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Química', 3, 3);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Física', 3, 3);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Inglés', 1, 4);
INSERT INTO asignatura (nombre_asignatura, id_profesor, id_curso) VALUES ('Francés', 2, 4);

INSERT INTO alumno (nombre_alumno, edad, id_curso, id_tutor) VALUES ('Luis García', 16, 1, 1);
INSERT INTO alumno (nombre_alumno, edad, id_curso, id_tutor) VALUES ('María González', 15, 1, 1);
INSERT INTO alumno (nombre_alumno, edad, id_curso, id_tutor) VALUES ('José Martínez', 17, 2, 2);
INSERT INTO alumno (nombre_alumno, edad, id_curso, id_tutor) VALUES ('Ana Sánchez', 16, 3, 3);
INSERT INTO alumno (nombre_alumno, edad, id_curso, id_tutor) VALUES ('Sara López', 15, 
