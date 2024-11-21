# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                   #
# Exercise 02                                                            #
# ---------------------------------------------------------------------- #

SELECT * 
FROM vehicles
WHERE vin IN (
    SELECT vin
    FROM inventory
    WHERE dealershipID = 1
);