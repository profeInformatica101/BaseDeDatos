CREATE TABLE Profesor (
    id_profesor INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE Curso (
    id_curso INT PRIMARY KEY,
    nombre_curso VARCHAR(50),
    año_escolar VARCHAR(50)
);

CREATE TABLE Asignatura (
    id_asignatura INT PRIMARY KEY,
    nombre_asignatura VARCHAR(50),
    descripcion VARCHAR(100)
);

CREATE TABLE Imparte (
    id_profesor INT,
    id_asignatura INT,
    id_curso INT,
    PRIMARY KEY (id_profesor, id_asignatura, id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor),
    FOREIGN KEY (id_asignatura) REFERENCES Asignatura(id_asignatura),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Tutor (
    id_tutor INT PRIMARY KEY,
    id_curso INT,
    id_profesor INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor)
);

CREATE TABLE Alumno (
    id_alumno INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(50),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);
