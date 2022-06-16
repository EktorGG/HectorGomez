-- create database generationg1;

use generationg1;


CREATE TABLE direcciones(
	id int primary key auto_increment,
	nombre varchar(100) not null,
	numero int not null,
	ciudad varchar(100),
	region int,
    pais VARCHAR(100)
);


CREATE TABLE cursos(
	id int primary key auto_increment,
	nombre varchar(100) not null,
	descripcion varchar(100)
);


CREATE TABLE registros(
	id int primary key auto_increment,
	codigo_registro varchar(100),
	rut varchar(30)	
);

CREATE TABLE alumnos(
	id int primary key auto_increment,
	nombre varchar(100) not null,
   apellido varchar(100) not null,
	edad int not NULL,
	direccion_id INT,
	curso_id INT,
	registro_id int
);

-- FOREING KEY
ALTER TABLE alumnos
ADD CONSTRAINT FK_direccion_id -- asignar nombre a la relacion
FOREIGN KEY (direccion_id) REFERENCES direcciones(id),
ADD CONSTRAINT FK_curso_id -- asignar nombre a la relacion
FOREIGN KEY (curso_id) REFERENCES cursos(id),
ADD CONSTRAINT FK_registro_id -- asignar nombre a la relacion
FOREIGN KEY (registro_id) REFERENCES registros(id)
;