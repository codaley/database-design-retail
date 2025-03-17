-- INSERT:
INSERT INTO customer VALUES ('4-5-666','John','95819');

-- UPDATE:
UPDATE customer
SET customername = 'Jane'
WHERE customername = 'John';

-- DELETE:
DELETE FROM customer
WHERE customername = 'Jane';