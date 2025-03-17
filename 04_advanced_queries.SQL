-- HAVING: Find transactions with more than 5 items sold
SELECT tid, SUM(quantity)
FROM includes
GROUP BY tid
HAVING SUM(quantity) > 5;

-- Subquery: Find products priced below the average price
SELECT productid, productname, productprice, vendorname
FROM product
JOIN vendor ON vendor.vendorid = product.vendorid
WHERE productprice < (SELECT AVG(productprice) FROM product);

-- Aggregate Functions: Find the cheapest product
SELECT productid, productname, MIN(productprice)
FROM product
GROUP BY productid;