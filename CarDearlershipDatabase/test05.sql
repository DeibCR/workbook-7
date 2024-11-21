# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                   #
# Exercise 5                                                             #
# ---------------------------------------------------------------------- #

SELECT d.name, d.address, d.phone
FROM dealerships d
JOIN inventory i ON d.dealershipID = i.dealershipID
JOIN vehicles v ON i.vin = v.vin
WHERE v.make = 'Honda' AND v.model = 'Civic' AND v.color = 'Blue';