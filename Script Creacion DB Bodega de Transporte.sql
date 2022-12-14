CREATE DATABASE BD_parcial_final
GO
USE BD_parcial_final
GO
CREATE TABLE Cliente 
(Nit VARCHAR(10) NOT NULL PRIMARY KEY (Nit),
R_social VARCHAR(40) NOT NULL,
Ciudad VARCHAR(50) NOT NULL,
Tel_ciudad_cent VARCHAR(10) NOT NULL)
GO
CREATE TABLE Gerente 
(Cedula VARCHAR(10) NOT NULL PRIMARY KEY (Cedula),
Nom VARCHAR(50) NOT NULL,
Tel VARCHAR(10) NOT NULL,
Email VARCHAR(30) NOT NULL)
GO
CREATE TABLE Medio_de_transporte 
(ID VARCHAR(10)  NOT NULL PRIMARY KEY (ID),
Tipo VARCHAR(40) NOT NULL,
Empresa_trans VARCHAR(35) NOT NULL)
GO
CREATE TABLE Bodega 
(ID VARCHAR(10) NOT NULL PRIMARY KEY (ID),
Alt_metros VARCHAR(10) NOT NULL,
Area VARCHAR (10) NOT NULL,
Nom_arb VARCHAR(20) NULL,
Med_trans_ID_1 VARCHAR(10) NULL,
Bodega_ID_1 VARCHAR(10)  NULL,
Cliente_Nit_1 VARCHAR(10)  NULL)
GO
ALTER TABLE Bodega
ADD CONSTRAINT CONS_fk_trans_ID1
FOREIGN KEY (Med_trans_ID_1) REFERENCES Medio_de_transporte(ID)
GO
ALTER TABLE Bodega
ADD CONSTRAINT CONS_fk_Bod_ID_1
FOREIGN KEY (Bodega_ID_1) REFERENCES Bodega(ID)
GO
ALTER TABLE Bodega
ADD CONSTRAINT CONS_fk_Nit_Cliente_1
FOREIGN KEY (Cliente_Nit_1) REFERENCES Cliente(Nit)
GO
CREATE TABLE Producto 
(Ref VARCHAR(10) NOT NULL PRIMARY KEY (Ref),
Nom VARCHAR(60) NOT NULL,
Cost_unid VARCHAR(15) NOT NULL,
Num_unid_bod VARCHAR(10) NOT NULL,
Tipo_product VARCHAR(15) NULL,
Cliente_Nit VARCHAR(10) NULL,
Gerente_Cedula VARCHAR(10) NULL,
Bodega_ID VARCHAR(10) NULL)
GO
ALTER TABLE Producto 
ADD CONSTRAINT CONS_fk_Nit_Cliente 
FOREIGN KEY	(Cliente_Nit) REFERENCES Cliente(Nit)
GO
ALTER TABLE Producto 
ADD CONSTRAINT CONS_fk_Ced_Gerente 
FOREIGN KEY	(Gerente_Cedula) REFERENCES Gerente(Cedula)
GO
ALTER TABLE Producto 
ADD CONSTRAINT CONS_fk_ID_Bodega 
FOREIGN KEY	(Bodega_ID) REFERENCES Bodega(ID)
GO
CREATE TABLE Product_Med_trans 
(Product_Ref VARCHAR(10)NOT NULL,
Med_de_trans_ID VARCHAR(10)NOT NULL,
PRIMARY KEY (Product_Ref, Med_de_trans_ID))
GO
ALTER TABLE Product_Med_trans
ADD CONSTRAINT CONS_fk_product_ref 
FOREIGN KEY (Product_Ref) REFERENCES Producto(Ref)
GO
ALTER TABLE Product_Med_trans
ADD CONSTRAINT CONS_fk_med_trans_id
FOREIGN KEY (Med_de_trans_ID) REFERENCES Medio_de_transporte(ID)
GO
