SELECT *
FROM northwind.products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;