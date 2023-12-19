USE BD_Shoestore;
-- Creacion de vistas 

-- Vista 1: muestra las ventas de unidades por marca
CREATE OR REPLACE VIEW VentaUnidadesMarca as
Select b.brandname,ss.Quantity, s.amount
	from saledetails as ss
	JOIN products as p	on ss.ProductID = p.ProductID
    JOIN sales as s on ss.SaleID= s.SaleID
    JOIN brands as b on p.BrandID=b.BrandID;

-- Vista 2: muestra las ventas de unidades por categoria
CREATE OR REPLACE VIEW VentaCategoria as
Select c.CategoryName, ss.Quantity, s.amount
	from saledetails as ss
	JOIN products as p	on ss.ProductID = p.ProductID
    JOIN sales as s on ss.SaleID= s.SaleID
    JOIN categories as c on p.categoryID=c.CategoryID;

-- Vista 3 muestra las ventas realizadas por cada empleado
CREATE OR REPLACE VIEW VentaxEmpleado as 
SELECT e.EmployeeID,e.FirstName,e.Jobdescription,e.StoreID,s.amount
	from sales as s
    JOIN employees as e on e.employeeID=s.employeeID;

-- Vista 4 muestra la distribución de venta según edades
CREATE OR REPLACE VIEW VentasxEdades as
SELECT c.Age,s.amount
	from sales as s
    JOIN customers as c on c.customerID=s.CustomerID;

-- Vista 5 muestra las ventas por tienda
CREATE OR REPLACE VIEW VentaTienda as
Select st.StoreID,st.style,st.province,s.Amount
	From sales as s
    JOIN Stores as st on s.StoreID = st.StoreID

-- Funciones
-- esta funcion nos va a permitir ver cuantos unidades por producto han sido vendidas para realizar futuros analisis de bestsellers
DELIMITER //
CREATE FUNCTION BestSellers(Producto Int) RETURNS int 
deterministic
Begin
	declare total int;
    SElECT sum(Quantity) into total from saledetails where Producto = productID;
    return total;
end//
DELIMITER ;

-- esta funcion nos va a permitir aplicar descuentos a productos seleccionados
DELIMITER //
CREATE FUNCTION AplicarDescuento(producto INT, descuento DECIMAL(5, 2)) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
  DECLARE precio_original DECIMAL(10, 2);
  DECLARE precio_descuento DECIMAL(10, 2);

  SELECT Price INTO precio_original
  FROM products
  WHERE ProductID = producto;

   SET precio_descuento = precio_original - (precio_original * (descuento / 100));

  RETURN precio_descuento;
END//
DELIMITER ;

-- StoredProcedures
-- Este procedimiento almacenado busca crear un reporte de ventas tomando como parametros un rango de fechas
DELIMITER $$
CREATE PROCEDURE GenerarReporteVentasPorPeriodo (In FechaInicio DATE, IN FechaFin DATE)
BEGIN
	SELECT v.SaleID, v.Amount, sd.saledetailID,sd.ProductID,sd.Quantity,st.cost, FORMAT((v.Amount - (sd.Quantity * st.cost)),2) as Margin
    FROM Sales v
    JOIN saledetails sd on v.saleID=sd.saleID
    JOIN products p on sd.productID=p.productID
    JOIN stocks st on sd.ProductID = st.ProductID
    WHERE v.SalesDate BETWEEN FechaInicio and FechaFin;
END $$
DELIMITER ;

-- ESte procedimiento busca generar un reporte de venta historica de productos por año y mes incluyendo nombre de categoria y marca
DELIMITER //
CREATE PROCEDURE GenerarReporteVentasPorProducto()
BEGIN
    SELECT p.ProductID,
           SUM(v.Amount) AS VENTAProducto,
           (SUM(sd.Quantity) * st.Cost) AS Margen,
           b.brandName,
           c.CategoryName,
           YEAR(v.Salesdate) AS Año,
           MONTH(v.Salesdate) AS Mes
    FROM Sales v
    INNER JOIN Saledetails sd ON v.saleID = sd.saleID
    INNER JOIN STOCKs st ON sd.ProductID = st.ProductID
    INNER JOIN products p ON sd.ProductID = p.ProductID
    INNER JOIN brands b ON p.BrandID = b.BrandID
    INNER JOIN categories c ON p.CategoryID = c.CategoryID
    GROUP BY p.ProductID, Año, Mes;
END //

DELIMITER ;

-- Triggers
-- Trigger 1
DELIMITER //
CREATE TRIGGER ActualizarStock
AFTER  INSERT ON saledetails
FOR EACH ROW
BEGIN
	UPDATE stocks
    SET Stock = Stock -New.Quantity
    WHERE ProductID = New.ProductID;
END;
//
DELIMITER ;

-- Trigger 2
DELIMITER //
CREATE TRIGGER UniformizarFechaStock
AFTER INSERT ON saledetails
FOR EACH ROW
BEGIN
	SET @fecha_venta = DATE(Salesdate);
	SET @domingo_semana = date_add(@fecha_venta,interval(7-dayofweek(@fecha_venta))DAY);
    UPDATE stocks
    SET StockDateU = @domingo_semana;
END;
//
DELIMITER ;
				
