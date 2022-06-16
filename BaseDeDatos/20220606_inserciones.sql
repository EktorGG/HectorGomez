-- Insert into nombre_tabla
use generationg1;

INSERT INTO cursos (nombre, descripcion) VALUES ('Alfa','aplicados'), ('Beta','inteligentes'),('Gamma','Astutos');

INSERT INTO registros(codigo_registro, rut) VALUES('ZP202201','12345678-9'), ('AP202201','23456789-1'),('TL202203', '34567891-2');

INSERT INTO direcciones(nombre, numero, ciudad) VALUES
    ('Prat','123','Arica'),
    ('Bulnes', '444', 'Punta Arenas'),
    ('Arana', '765','Concepción');

INSERT INTO ALUMNOS (nombre, apellido, edad, curso_id, registro_id, direccion_id) VALUES
('Zoe','Palma',	'3',	'1',	'3',	'1'),
('Ayun',	'Palma',	'3',	'1',	'3',	2),
('Tom',	'Loren',	'5',	'3',	'1',	'3');