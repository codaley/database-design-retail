-- WHERE: Display all the information for all stores whose RegionID value is 'C'
SELECT *
FROM store
WHERE regionid = 'C';

-- ORDER BY: Display CustomerName and CustomerZip, sorted alphabetically by CustomerName
SELECT customername, customerzip
FROM customer
ORDER BY customername;

-- JOIN: Display ProductID, ProductName, ProductPrice, and VendorName for all products
SELECT productid, productname, productprice, vendorname
FROM product
JOIN vendor ON product.vendorid = vendor.vendorid
ORDER BY productid;