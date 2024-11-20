# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Northwind                                       #
#                        Excersices 01,02,03                             #
# ---------------------------------------------------------------------- #


#  01. name of the table that hold items that Northwind sells  #
-- products

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

-- 07. products that we carry that  where we have no units on hand, but 1 or more units of them on backorder, obred by product name
SELECT *
FROM northwind.products
where UnitsInStock <= 0
and UnitsOnOrder >= 1
order by ProductName

-- 08. name of  that holds the types(categories) of the items Northwind sells? 
 -- categories
 
-- 09.  write a query that list all of the colums and all of the rows of the categories table? what is the category id of seafood
select categoryID, CategoryName 
from northwind.categories
where CategoryName = 'Seafood'

-- 10.  on the products table, identify the type (category) of each item sold? whrite a query to list all of the seafood items we carry
FROM northwind.products
WHERE CategoryID = (
    SELECT CategoryID
    FROM northwind.categories
    WHERE CategoryName = 'Seafood'
);

-- 11. first and last name of all northwind employees
select FirstName,LastName
from northwind.employees

-- 12. what emplyees have manager on their tittles
select *
from northwind.employees
where title like '%manager%'

-- 13. list the distict job titles in employees
select title
from northwind.employees

-- 14. what employees have salary that is between $2000 and $2500?
select *
from northwind.employees
where salary between 2000 and 2500

-- 15. list all the information about all nortwinds suppliers
SELECT *
FROM northwind.suppliers

16. write a query to list all of the items that "Tokyo Traders" supplies to Northwind
select *
from northwind.products
where supplierID = (
		select supplierID
        from northwind.suppliers
        where companyName = 'Tokyo Traders')
        
        


