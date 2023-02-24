 CREATE SCHEMA `tienda_zapatillas`;
USE `tienda_zapatillas`;
CREATE TABLE `zapatillas`(
	id_zapatillas INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL);
CREATE TABLE `clientes`(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45),
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL); 
CREATE TABLE `empleados`(
	id_empleado INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL);
CREATE TABLE `Facturas`(
	id_factura INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatilla INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
   PRIMARY KEY id_facturas,
   CONSTRAINT `fk_Facturas_zapatillas`
		FOREIGN KEY(id_zapatilla),
        REFERENCES `zapatillas`(id_zapatilla),
        
        
        


