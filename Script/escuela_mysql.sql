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

