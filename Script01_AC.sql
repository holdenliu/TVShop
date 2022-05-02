-- SELECT * FROM customer;
-- SELECT * FROM employee;
-- SELECT * FROM order_t;
-- SELECT * FROM television;
-- SELECT * FROM order_line;
-- SELECT * FROM supplier;
-- SELECT * FROM supply;

SELECT first_name AS 'First Name', last_name AS 'Last Name',
Address, brand as 'Brand', order_id AS 'Order ID'
FROM customer join order_t 
USING (customer_id)
join order_line 
USING (order_id)
join television
USING (model_number)
WHERE brand = 'Sony';

SELECT model_number AS 'Model Number', brand AS 'Brand',
screen_size AS 'Screen Size', price AS 'Price'
FROM television
WHERE screen_size > 60;

SELECT * FROM customer
WHERE last_name = 'smith';

SELECT supplier_name AS 'Supplier Name', quantity AS 'Supply Qty',
supplier.supplier_id AS 'Supplier ID'
FROM supplier
JOIN supply
ON (supplier.supplier_id = supply.supplier_id)
WHERE quantity <= 10;

SELECT first_name AS 'First Name', last_name AS 'Last Name',
address AS 'Address', email AS 'Email', order_id AS 'OrderID',
order_t.date AS 'Order Date'
FROM customer, order_t
WHERE customer.customer_id = order_t.customer_id
ORDER BY order_t.date;

SELECT first_name AS 'First Name', last_name AS 'Last Name', price AS 'Sub-Total'
FROM customer join order_t join order_line
ON (customer.customer_id = order_t.customer_id)
AND (order_t.order_id = order_line.order_id)
WHERE price = (SELECT MAX(price) FROM order_line);