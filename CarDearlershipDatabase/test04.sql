# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                   #
# Exercise 4                                                             #
# ---------------------------------------------------------------------- #

SELECT d.name, d.address, d.phone
FROM dealerships d
JOIN inventory i ON d.dealershipID = i.dealershipID
WHERE i.vin = '1HGCM82633A123456';