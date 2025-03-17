-- Create a view for products with more than two items sold
CREATE VIEW products_sold_3 AS
SELECT productid, productname, productprice
FROM product
WHERE productid IN (
  SELECT productid FROM includes GROUP BY productid HAVING SUM(quantity) > 2
);

-- Create a view for products included in transactions
CREATE VIEW products_trans_2 AS
SELECT productid, productname, productprice
FROM product
WHERE productid IN (SELECT productid FROM includes GROUP BY productid);

-- Combine both views
SELECT * FROM products_sold_3
UNION
SELECT * FROM products_trans_2;