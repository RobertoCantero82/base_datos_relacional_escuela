
ALTER TABLE sedes RENAME COLUMN id_sedes TO id_sede;

CREATE TABLE modalidades (
    id_modalidad INT SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id_curso INT SERIAL PRIMARY KEY,
	codigo VARCHAR (100) NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE roles (
    id_rol INT SERIAL PRIMARY KEY,
	codigo VARCHAR (100) NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE proyectos (
    id_proyecto INT SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
	id_curso INT NOT NULL,
	CONSTRAINT fk_proyectos_curso
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE promociones (
    id_promocion SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_comienzo DATE NOT NULL, 
    id_sede INT NOT NULL,
  	id_modalidad INT NOT NULL,
  	id_curso INT NOT NULL,
	CONSTRAINT fk_promociones_sede
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede),
	CONSTRAINT fk_promociones_modalidad
	FOREIGN KEY (id_modalidad) REFERENCES modalidades(id_modalidad),
	CONSTRAINT fk_promociones_curso
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

CREATE TABLE profesores (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
  	id_rol INT NOT NULL,
	CONSTRAINT fk_profesores_rol
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE alumnos (
    id_alumno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
  	id_promocion INT NOT NULL,
	CONSTRAINT fk_alumnos_promocion
    FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion)
);

CREATE TABLE notas (
    id_nota SERIAL PRIMARY KEY,
    resultado VARCHAR(30) NOT NULL,
  	id_alumno INT NOT NULL,
	id_proyecto INT NOT NULL,
	CONSTRAINT fk_notas_alumno
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
	CONSTRAINT fk_notas_proyecto
    FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
	
);

CREATE TABLE asignaciones (
    id_asignacion SERIAL PRIMARY KEY,
  	id_profesor INT NOT NULL,
	id_promocion INT NOT NULL,
	CONSTRAINT fk_asignaciones_profesor
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor),
	CONSTRAINT fk_asignaciones_promocion
    FOREIGN KEY (id_promocion) REFERENCES promociones(id_promocion)
);