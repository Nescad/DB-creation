GO
INSERT INTO Medio_de_transporte(ID, Tipo, Empresa_trans)
VALUES('30','Aéreo', 'Avianca' )
GO
INSERT INTO Cliente (Nit, R_social, Ciudad, Tel_ciudad_cent) 
VALUES ('10', 'Juan Perez', 'Medellin-Antioquia', '300')
GO
INSERT INTO Gerente (Cedula, Nom, Tel, Email) 
VALUES ('100', 'Camilo Gonzalez', '400', 'Camilog300@gmail.com')
GO
INSERT INTO Bodega (ID, Alt_metros,Nom_arb, Area,  Med_trans_ID_1, Bodega_ID_1, Cliente_Nit_1) 
VALUES ('20', '5','Bodega Gonzo', '200' , '30', '20', '10')
GO
INSERT INTO producto (Ref, Nom, Cost_unid, Num_unid_bod, Tipo_product, Cliente_Nit, Gerente_Cedula, Bodega_ID) 
VALUES ('1111', 'Llantas de automovil', '825000', '4', 'Automoviles', '10', '100', '20');
GO
UPDATE Cliente
SET R_social  = 'Carroceria Company'
WHERE Nit = '10'

-------------------------------------------------------
GO
INSERT INTO Medio_de_transporte(ID, Tipo, Empresa_trans)
VALUES('31','Terrestre', 'Servientrega' )
GO
INSERT INTO Cliente (Nit, R_social, Ciudad, Tel_ciudad_cent) 
VALUES ('11', 'Maria Castillo', 'Bogota-Cundinamarca', '310')
GO
INSERT INTO Gerente (Cedula, Nom, Tel, Email) 
VALUES ('110', 'Carmen Sepulveda', '410', 'CarmenSpa09@gmail.com')
GO
INSERT INTO Bodega (ID, Alt_metros,Nom_arb, Area,  Med_trans_ID_1, Bodega_ID_1, Cliente_Nit_1) 
VALUES ('21', '4','Bodega Castle', '250' , '31', '21', '11')
GO
INSERT INTO producto (Ref, Nom, Cost_unid, Num_unid_bod, Tipo_product, Cliente_Nit, Gerente_Cedula, Bodega_ID) 
VALUES ('1222', 'Sillas', '6000000', '60', 'Hogar', '11', '110', '21');
GO
UPDATE Cliente
SET R_social = 'Plasticos SA'
WHERE Nit = '11'
------------------------------------------------
GO
INSERT INTO Medio_de_transporte(ID, Tipo, Empresa_trans)
VALUES('32','Maritímo', 'Ibercondor' )
GO
INSERT INTO Cliente (Nit, R_social, Ciudad, Tel_ciudad_cent) 
VALUES ('12', 'Compañia todo celulares', 'Bogota-Cundinamarca', '311')
GO
INSERT INTO Gerente (Cedula, Nom, Tel, Email) 
VALUES ('120', 'Marlon Zaragoza', '420', 'Mzaragoza1002@gmail.com')
GO
INSERT INTO Bodega (ID, Alt_metros,Nom_arb, Area,  Med_trans_ID_1, Bodega_ID_1, Cliente_Nit_1) 
VALUES ('22', '7','Bodega Invon', '300' , '32', '22' , '12')
GO
INSERT INTO producto (Ref, Nom, Cost_unid, Num_unid_bod, Tipo_product, Cliente_Nit, Gerente_Cedula, Bodega_ID) 
VALUES ('1234', 'Telefonos celulares', '5000000', '15', 'Tecnología', '12', '120', '22');
GO
UPDATE Producto
set Cost_unid = '50000000'
where Ref = '1234'
------------------------------------------------
GO 
INSERT INTO Product_Med_trans (Product_Ref, Med_de_trans_ID)
VALUES ('1111', '30')
GO
INSERT INTO Product_Med_trans (Product_Ref, Med_de_trans_ID)
VALUES ('1222', '31')
GO
INSERT INTO Product_Med_trans (Product_Ref, Med_de_trans_ID)
VALUES ('1234', '32')
GO

