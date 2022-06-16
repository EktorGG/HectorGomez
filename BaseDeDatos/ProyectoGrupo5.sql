DROP DATABASE if EXISTS dailyscrum;

CREATE DATABASE dailyscrum;

USE dailyscrum;

CREATE TABLE usuarios(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombres VARCHAR(50),
apellidos VARCHAR(50),
rut VARCHAR(50),
fechaDeNac DATE,
edad VARCHAR(50),
direccion_id INT,
correo VARCHAR(50),
constraseña VARCHAR(20)
);

CREATE TABLE tablero(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
grupoTrabajo VARCHAR(50),
fecha DATE,
usuario_id INT,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE mensajes(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
usuario_id INT,
fecha DATE,
mensajeAyer VARCHAR(999),
mensajeHoy VARCHAR(999),
mensajeDificultad VARCHAR(999),
FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);