USE AdventureWorks2019
GO

--Se requiere saber la cantidad y punto de pedido por producto

SELECT pp.ProductID, pp.Name AS Producto, pp.ReorderPoint AS Punto_pedido, ppo.OrderQty AS Cantidad
FROM Production.Product pp
INNER JOIN Purchasing.PurchaseOrderDetail ppo
ON pp.ProductID = ppo.ProductID
ORDER BY ProductID ASC