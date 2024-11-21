# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          CarDealership                                   #
# Exercise 06                                                            #
# ---------------------------------------------------------------------- #

SELECT 
    dealerships.name,
    dealerships.address,
    dealerships.phone,
    sales_contracts.contractID,
    sales_contracts.salesTax,
    sales_contracts.recordingFee,
    sales_contracts.processingFee,
    sales_contracts.isFinance,
    vehicles.make,
    vehicles.model,
    vehicles.year,
    vehicles.price,
    contract.dateOfContract,
    contract.customerName,
    contract.customerEmail
FROM 
    sales_contracts
JOIN 
    contract ON sales_contracts.contractID = contract.contractID
JOIN 
    vehicles ON sales_contracts.vin = vehicles.vin
JOIN 
    inventory ON vehicles.vin = inventory.vin
JOIN 
    dealerships ON inventory.dealershipID = dealerships.dealershipID
WHERE 
    dealerships.dealershipID = 1 
    AND contract.dateOfContract BETWEEN '2024-01-01' AND '2024-12-31';