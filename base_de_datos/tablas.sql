-- Script de creación de tablas del proyecto

DROP DATABASE   IF     EXISTS FNEXUS;
CREATE DATABASE IF NOT EXISTS FNEXUS;
USE FNEXUS;

-- TABLA PERSONA
DROP TABLE IF EXISTS PERSONA;
CREATE TABLE PERSONA (
  id int NOT NULL AUTO_INCREMENT,
  nickname varchar(100) UNIQUE NOT NULL,
  password varchar(100) NOT NULL,
  nombre varchar(100) NOT NULL,
  apellidos varchar(100) NOT NULL,
  email varchar(100) UNIQUE NOT NULL,
  foto_perfil varchar(100),
  imagen_banner varchar(100),
  pagina_contacto varchar(100) NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id)
);


-- TABLA CATEGORIA
DROP TABLE IF EXISTS CATEGORIA;
CREATE TABLE CATEGORIA (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(100) NOT NULL,

  PRIMARY KEY (id)
);


-- TABLA ANUNCIO
DROP TABLE IF EXISTS ANUNCIO;
CREATE TABLE ANUNCIO (
  id int NOT NULL AUTO_INCREMENT,
  persona_id int NOT NULL,
  categoria_id int(100) NOT NULL,
  titulo varchar(100) NOT NULL,
  descripcion varchar(500) NOT NULL,
  datos_contacto varchar(100) NOT NULL,
  imagen varchar(100),
  nombre_empresa varchar (100) NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id, persona_id, categoria_id),
  FOREIGN KEY (persona_id)
        REFERENCES PERSONA(id)
        ON DELETE CASCADE,
   FOREIGN KEY (categoria_id)
        REFERENCES CATEGORIA(id)
        ON DELETE CASCADE
);


-- TABLA COMENTARIO
DROP TABLE IF EXISTS COMENTARIO;
CREATE TABLE COMENTARIO (
  id int NOT NULL AUTO_INCREMENT,
  persona_id int NOT NULL,
  anuncio_id int NOT NULL,
  nombre varchar(100) NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id, persona_id, anuncio_id),
  FOREIGN KEY (persona_id)
        REFERENCES PERSONA(id)
        ON DELETE CASCADE,
  FOREIGN KEY (anuncio_id)
        REFERENCES ANUNCIO(id)
        ON DELETE CASCADE
);

-- TABLA LIKES
DROP TABLE IF EXISTS LIKES;
CREATE TABLE LIKES (
  id int NOT NULL AUTO_INCREMENT,
  persona_id int NOT NULL,
  anuncio_id int NOT NULL,
  fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (id, persona_id, anuncio_id),
  FOREIGN KEY (persona_id)
        REFERENCES PERSONA(id)
        ON DELETE CASCADE,
  FOREIGN KEY (anuncio_id)
        REFERENCES ANUNCIO(id)
        ON DELETE CASCADE
);