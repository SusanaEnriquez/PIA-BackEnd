/*Primero seleccionamos y ejecutamos esta linea*/
CREATE DATABASE BackEndDB;

/*Despues seleccionamos la base de datos donde trabajaremos y
	ejecutamos las siguientes lineas	*/
CREATE TABLE Imagen(
	id int IDENTITY(1,1) PRIMARY KEY,
	Titulo varchar(20),
	Descripcion varchar(100),
	URL varchar(max)
);
