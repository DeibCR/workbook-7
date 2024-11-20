# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Northwind                                       #
#                        Excersices 01,02,03                             #
# ---------------------------------------------------------------------- #


#  01. name of the table that hold items that Northwind sells  #
select * from northwind.products; 


# 02. Query to list the product id, product name and unit price of every product #
select ProductID,ProductName,UnitPrice from northwind.products

-- # 03. Query to list the product id, product name and unit price of every product, order in ascending order by price #
SELECT ProductID, ProductName, UnitPrice
FROM northwind.products
ORDER BY UnitPrice ASC

#  04. Products that we carry where the unit price is $7.50 or less #
select * 
from northwind.products
where unitPrice <= 7.50;

# 05.  products that we carry where we have at leats 100 units on hand? order in desc by price #
select *
from northwind.products
where UnitsInStock >=100
order by UnitPrice desc

# 06. products that we carry where we have at leats 100 units on hand? order in desc by price. If 2 or more have the same price  list those in asc by product name #
SELECT *
FROM northwind.products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;

-- 07. 

