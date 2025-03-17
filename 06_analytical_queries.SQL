-- Find average shipping time by shipping type
SELECT d.shippingtype, AVG(DATEDIFF(d.datedelivery, s.tdate))
FROM Delivery d, salestransaction s
WHERE s.tid = d.tid
GROUP BY shippingtype
ORDER BY AVG(DATEDIFF(d.datedelivery, s.tdate));

-- Find total revenue by region
SELECT r.regionname, SUM(p.productprice * i.quantity)
FROM product p, salestransaction st, store s, includes i, region r
WHERE st.tid = i.tid
AND i.productid = p.productid
AND s.storeid = st.storeid
AND s.regionid = r.regionid
GROUP BY regionname
ORDER BY SUM(p.productprice * i.quantity);