drop database if exists TestJoin;

CREATE DATABASE TestJoin;

USE TestJoin;

CREATE TABLE Grupos(
    Id int PRIMARY KEY NOT NULL,
    nombre varchar(20)
);

CREATE TABLE Alumnos(
    Id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(20),
    grupoId int 
);

INSERT INTO Grupos VALUES(1, 'Grupo1'),(2, 'Grupo2'),(3, 'Grupo3'),(4, 'Grupo4'),(5, 'Grupo5'),(6, 'Grupo6');

-- Grupo 1
INSERT INTO Alumnos(nombre, grupoId) VALUES('Leonardo Utreras', 1),
('Luis Mejias', 1),
('Francisco Cid', 1),
('Francisco Perez', 1),
('Marysabel Aedo', 1),
('Ignacio Romero', 1),

-- Grupo 2
('Nicolas Neira', 2),
('Genesis Quezada', 2),
('Catalina Castillo', 2),
('Carlos Iturra', 2),
('Gabriel Guzman', 2),

-- Grupo 3
('Alejandro', 3),
('Luis', 3),
('Cristobal', 3),
('Joao', 3),
('Cristian', 3),

-- Grupo 4
('Danko', 4),
('Wladimir', 4),
('Catalina', 4),
('Esteban', 4),
('Katherina', 4),

-- Grupo 5
('Nicole Olivares', 5),
('Hector Gomez', 5),
('Fernando Faundez',5),
('Ignacio Galaz', 5),
('Constanza Mardones', 5),

-- Grupo 6
('Alondra', 6),
('Diana', 6),
('Matias', 6),
('Michael', 6),
('Paulino', 6);

ALTER TABLE Alumnos
ADD CONSTRAINT FK_grupo_id
FOREIGN KEY (grupo_id) REFERENCES grupos(id);

select * from alumnos a;
select * from grupos g;

-- Inner Join

select *
from alumnos a
inner join grupos g
on a.grupo_id = g.id
WHERE g.id = 4;




