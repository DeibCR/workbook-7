SELECT 
    v.make AS vehicle_make,
    v.model AS vehicle_model,
    v.price AS vehicle_price,
    d.name AS dealership_name,
    c.customerName AS customer_name,
    c.customerEmail AS customer_email
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
JOIN dealerships d ON i.dealershipID = d.dealershipID
JOIN contract c ON v.vin = c.vin
WHERE v.sold = TRUE;