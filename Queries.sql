#Queries for #6 using JOIN
#Display customers with orders, the price the customer purchased, and how many.
SELECT customer.first_name, customer.last_name, order_line.quantity, order_t.date, order_line.price 
FROM customer JOIN order_t JOIN order_line
	ON customer.customer_id = order_t.customer_id
	AND order_t.order_id = order_line.order_id;

#Return a TV brand, supplier name, the screen size, and how many are in inventory
SELECT television.brand, supplier.supplier_name, television.description, television.screen_size, supply.quantity
	FROM television
		JOIN supply USING (model_number)
        JOIN supplier USING (supplier_id);

#Check the date on when a employee sold an order to a customer
SELECT employee.first_name, customer.first_name, order_t.date
	FROM employee 
		JOIN order_T USING (employee_id)
		JOIN customer USING (customer_id);
        
#The screen size customers have ordered
SELECT customer.first_name, order_t.date, order_line.price, order_line.quantity, television.screen_size
	FROM customer
		JOIN order_t USING (customer_id)
		JOIN order_line USING (order_id)
		JOIN television USING (model_number);

#Name of customer, brand, and supplier
SELECT customer.first_name, customer.last_name, television.brand, supplier.supplier_name
	FROM customer
		JOIN order_t USING (customer_id)
		JOIN order_line USING (order_id)
		JOIN television USING (model_number)
		JOIN supply USING (model_number)
		JOIN supplier USING (supplier_id);
