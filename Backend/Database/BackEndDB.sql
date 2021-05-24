/*Primero seleccionamos y ejecutamos esta linea*/
CREATE DATABASE BackEndDB;

/*Usar la base de datos*/
USE BackEndDB

/*Despues seleccionamos la base de datos donde trabajaremos y
	ejecutamos las siguientes lineas	*/
CREATE TABLE Imagen (
	id int IDENTITY(1,1) PRIMARY KEY,
	Titulo varchar(20),
	Descripcion varchar(100),
	UrlImage varchar(max)
);

/*Para activar el id auto incrementable*/
set identity_insert "Imagen" on

/*Registro de prueba*/
INSERT INTO Imagen (id, Titulo, Descripcion, UrlImage) 
	VALUES (1, 'Situacion actual', 'Imagen que describe nuestra situacion actual', 
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2Fcd123fb3-9e3e-4361-fdc5-874bbc9388af.jpg?alt=media&token=188f27fe-4bdb-419a-ad60-952f76dd0d76')