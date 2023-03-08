-- Crear la tabla de cursos
CREATE TABLE cursos (
  id_curso INTEGER PRIMARY KEY,
  nombre_curso TEXT,
  descripcion_curso TEXT,
  id_profesor INTEGER,
  id_asignatura INTEGER,
  FOREIGN KEY (id_profesor) REFERENCES profesores (id_profesor),
  FOREIGN KEY (id_asignatura) REFERENCES asignaturas (id_asignatura)
);

-- Crear la tabla de profesores
CREATE TABLE profesores (
  id_profesor INTEGER PRIMARY KEY,
  nombre_profesor TEXT,
  apellido_profesor TEXT,
  email_profesor TEXT
);

-- Crear la tabla de alumnos
CREATE TABLE alumnos (
  id_alumno INTEGER PRIMARY KEY,
  nombre_alumno TEXT,
  apellido_alumno TEXT,
  email_alumno TEXT,
  id_curso INTEGER,
  FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
);

-- Crear la tabla de tutores
CREATE TABLE tutores (
  id_tutor INTEGER PRIMARY KEY,
  nombre_tutor TEXT,
  apellido_tutor TEXT,
  email_tutor TEXT,
  id_curso INTEGER,
  FOREIGN KEY (id_curso) REFERENCES cursos (id_curso),
  FOREIGN KEY (id_tutor) REFERENCES profesores (id_profesor)
);

-- Crear la tabla de asignaturas
CREATE TABLE asignaturas (
  id_asignatura INTEGER PRIMARY KEY,
  nombre_asignatura TEXT,
  descripcion_asignatura TEXT
);

-- Crear la tabla de relación entre profesores y asignaturas
CREATE TABLE profesores_asignaturas (
  id_profesor INTEGER,
  id_asignatura INTEGER,
  PRIMARY KEY (id_profesor, id_asignatura),
  FOREIGN KEY (id_profesor) REFERENCES profesores (id_profesor),
  FOREIGN KEY (id_asignatura) REFERENCES asignaturas (id_asignatura)
);


-- Registros de prueba para la tabla de profesores
INSERT INTO profesores (id_profesor, nombre_profesor, apellido_profesor, email_profesor) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@ejemplo.com'),
(2, 'María', 'García', 'maria.garcia@ejemplo.com'),
(3, 'Pedro', 'López', 'pedro.lopez@ejemplo.com');

-- Registros de prueba para la tabla de asignaturas
INSERT INTO asignaturas (id_asignatura, nombre_asignatura, descripcion_asignatura) VALUES
(1, 'Matemáticas', 'Asignatura de matemáticas'),
(2, 'Lengua', 'Asignatura de lengua'),
(3, 'Ciencias Naturales', 'Asignatura de ciencias naturales'),
(4, 'Historia', 'Asignatura de historia'),
(5, 'Inglés', 'Asignatura de inglés');

-- Registros de prueba para la tabla de profesores_asignaturas
INSERT INTO profesores_asignaturas (id_profesor, id_asignatura) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 5),
(3, 3),
(3, 4),
(3, 5);

-- Registros de prueba para la tabla de cursos
INSERT INTO cursos (id_curso, nombre_curso, descripcion_curso, id_profesor, id_asignatura) VALUES
(1, 'Primero de ESO', 'Curso de primer año de ESO', 1, 1),
(2, 'Segundo de ESO', 'Curso de segundo año de ESO', 2, 2),
(3, 'Tercero de ESO', 'Curso de tercer año de ESO', 3, 3),
(4, 'Cuarto de ESO', 'Curso de cuarto año de ESO', 1, 5);

-- Registros de prueba para la tabla de alumnos
INSERT INTO alumnos (id_alumno, nombre_alumno, apellido_alumno, email_alumno, id_curso) VALUES
(1, 'Ana', 'Martínez', 'ana.martinez@ejemplo.com', 1),
(2, 'Sara', 'García', 'sara.garcia@ejemplo.com', 1),
(3, 'Carlos', 'Gómez', 'carlos.gomez@ejemplo.com', 2),
(4, 'Marta', 'López', 'marta.lopez@ejemplo.com', 3),
(5, 'David', 'González', 'david.gonzalez@ejemplo.com', 3),
(6, 'Lucía', 'Pérez', 'lucia.perez@ejemplo.com', 4);

-- Registros de prueba para la tabla de tutores
INSERT INTO tutores (id_tutor, nombre_tutor, apellido_tutor, email_tutor, id_curso) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@ejemplo.com', 1),
(2, 'María', 'García', 'maria.garcia@ejemplo.com', 2),
(3, 'Pedro', 'López', 'pedro.lopez@ejemplo.com', 3);
