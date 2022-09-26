GO
SELECT Producto.Nom, Cliente.R_social FROM Cliente
INNER JOIN Producto ON Cliente.Nit = Producto.Cliente_Nit
GO
----------------------------
GO
SELECT Bodega.Area , Producto.Cost_unid FROM Producto
INNER JOIN Bodega ON Producto.Bodega_ID = Bodega.ID
WHERE Cost_unid >5000000 
GO
-------------------------------
GO
SELECT Cliente.R_social, Bodega.Area FROM Bodega
INNER JOIN Cliente ON Bodega.Cliente_Nit_1 = Cliente.Nit
GO
---------------------------------
SELECT * FROM Cliente