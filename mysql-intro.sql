 EN TERMINAL

 1) ssh root@45.55.135.14
 password: be@nAw3someDev

 2) mysql -u root -p

 root

/* después de conectarnos a mysql creamos nuestras DataBase DB  CREATE DATABASE nombreDB*/
3) CREATE DATABASE DBA_B3R307;
/* usamos el comando USE para seleccionar la DB donde vamos a trabajar */
4) USE DBA_B3R307;
/* usamos el comando CREATE para crear el esquema de la DB donde vamos a trabajar */
5) CREATE TABLE empresa (
  rfc VARCHAR(25) NOT NULL PRIMARY KEY,
  nombre VARCHAR(25) NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  cp INT NOT NULL,
  delegacion VARCHAR(25) NOT NULL,
  telefono INT NOT NULL,
  created_at TIMESTAMP DEFAULT "00:00:00 00:00:00"
  );
/* usamos el comando SHOW TABLES para visualizar las tablas creadas*/
6) SHOW TABLES;
/* usamos el comando CREATE para crear el esquema de la DB donde vamos a trabajar */
7)  CREATE TABLE trabajador (
    rfc VARCHAR(25) NOT NULL PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido_paterno VARCHAR(25) NOT NULL,
    apellido_materno VARCHAR(25) NOT NULL,
    nss INT NOT NULL,
    );

/* usamos el comando DESCRIBE para visualizar los datos de cada tabla*/
8) DESCRIBE empresa;
   DESCRIBE trabajador;

/* usamos el comando ALTER TABLE nombreDB  para agregar una columna que será el id de la clave foránea*/
9) ALTER TABLE trabajador ADD COLUMN rfc_empresa VARCHAR(15);
/* usamos el comando ALTER TABLE nombreDB  para agregar la columna para la clave foránea*/
   ALTER TABLE trabajador ADD FOREIGN KEY (rfc_empresa_league) REFERENCES empresa(rfc);


/*-----------------------------------------------------------------------------------------*/
/* en este ejercicio configuramos la clave foránea desde la declaración del esquema de la DB
también utilizamos el comando DATE DEFAULT para especificar una fecha */


CREATE DATABASE DBA_EXAMPLE;
USE DBA_EXAMPLE;

CREATE TABLE estudiantes (
 matricula INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(25) NOT NULL,
 apellido_paterno VARCHAR(25) NOT NULL,
 apellido_materno VARCHAR(25) NOT NULL,
 direccion VARCHAR(120) NOT NULL,
 telefono INT NOT NULL
);

CREATE TABLE clases (
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(25) NOT NULL,
 matricula_es INT NOT NULL,
 FOREIGN KEY (matricula_es) REFERENCES estudiantes(matricula),
 id_curso INT NOT NULL,
 FOREIGN KEY (id_curso) REFERENCES cursos(id),
 fecha_inicio DATE DEFAULT "2019-03-01",
 finaliza DATE DEFAULT "2019-09-30",
 telefono INT NOT NULL
);

CREATE TABLE profesor (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(25) NOT NULL,
  apellido_paterno VARCHAR(25) NOT NULL,
  apellido_materno VARCHAR(25) NOT NULL,
  direccion VARCHAR(25)
);


CREATE TABLE cursos (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(25) NOT NULL,
  duracion VARCHAR(50) NOT NULL,
  tema VARCHAR(25),
  id_profesor INT NOT NULL,
  FOREIGN KEY (id_profesor) REFERENCES profesor(id)
);
