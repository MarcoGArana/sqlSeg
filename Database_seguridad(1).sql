CREATE TABLE USUARIO(
nombre varchar(30) primary key,
correo varchar(30) not null,
telefono char(8) not null,
contrasena varchar(300) not null,
salt char(32) not null,
rol int not null
);
CREATE TABLE VIDEOJUEGO(
id int primary key auto_increment,
nombre varchar(40) not null,
descripcion varchar(700) not null,
id_estado int not null,
imagen varchar(2000) not null,
precio float not null,
nombre_usuario varchar(30) not null 
);
CREATE TABLE ROL(
id int primary key,
rol char(8) not null
);
CREATE TABLE TOKEN(
id int primary key auto_increment,
token varchar(200) not null,
nombre_usuario varchar(30) not null
);
CREATE TABLE ESTADO(
id int primary key,
estado varchar(20) not null
);
CREATE TABLE CATEGORIA(
id int primary key,
categoria varchar(20) not null
);
CREATE TABLE CATEGORIA_VIDEOJUEGO(
id_categoria int not null,
id_videojuego int not null
);
ALTER TABLE TOKEN ADD CONSTRAINT FOREIGN KEY (nombre_usuario) REFERENCES USUARIO(nombre);
ALTER TABLE USUARIO ADD CONSTRAINT FOREIGN KEY (rol) REFERENCES ROL(id);
ALTER TABLE VIDEOJUEGO ADD CONSTRAINT FOREIGN KEY (id_estado) REFERENCES ESTADO(id);
ALTER TABLE VIDEOJUEGO ADD CONSTRAINT FOREIGN KEY (nombre_usuario) REFERENCES USUARIO(nombre);
ALTER TABLE CATEGORIA_VIDEOJUEGO ADD CONSTRAINT FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id);
ALTER TABLE CATEGORIA_VIDEOJUEGO ADD CONSTRAINT FOREIGN KEY (id_videojuego) REFERENCES VIDEOJUEGO(id);

INSERT INTO ROL VALUES(1,"user");
INSERT INTO ROL VALUES(2,"admin");
INSERT INTO ROL VALUES(3,"sysadmin");

INSERT INTO ESTADO(id, estado) VALUES (1,"Nuevo");
INSERT INTO ESTADO(id, estado) VALUES (2,"Usado");
INSERT INTO ESTADO(id, estado) VALUES (3,"Desgastado");

INSERT INTO CATEGORIA(id, categoria) VALUES (1,"Accion"); 
INSERT INTO CATEGORIA(id, categoria) VALUES (2,"Aventura");  
INSERT INTO CATEGORIA(id, categoria) VALUES (3,"Aventura Grafica");  
INSERT INTO CATEGORIA(id, categoria) VALUES (4,"RPG");  
INSERT INTO CATEGORIA(id, categoria) VALUES (5,"Shooter");  
INSERT INTO CATEGORIA(id, categoria) VALUES (6,"Plataformas");  
INSERT INTO CATEGORIA(id, categoria) VALUES (7,"Deportes");  
INSERT INTO CATEGORIA(id, categoria) VALUES (8,"Simulacion");  
INSERT INTO CATEGORIA(id, categoria) VALUES (9,"Estrategia");  
INSERT INTO CATEGORIA(id, categoria) VALUES (10,"Lucha");  
INSERT INTO CATEGORIA(id, categoria) VALUES (11,"Horror");  
INSERT INTO CATEGORIA(id, categoria) VALUES (12,"Musica y Ritmo");  
INSERT INTO CATEGORIA(id, categoria) VALUES (13,"Sandbox");  
INSERT INTO CATEGORIA(id, categoria) VALUES (14,"Multijugador");  
INSERT INTO CATEGORIA(id, categoria) VALUES (15,"Realidad Virtual");  
INSERT INTO CATEGORIA(id, categoria) VALUES (16,"Survival");  
INSERT INTO CATEGORIA(id, categoria) VALUES (17,"Party Games");  
INSERT INTO CATEGORIA(id, categoria) VALUES (18,"Puzzle");   
