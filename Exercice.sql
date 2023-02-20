SELECT customersname, customerslastname
FROM customers
ORDER BY customerslastname DESC
LIMIT 2;


DELETE FROM purchases
WHERE customer_id = (SELECT customer_id 
					 FROM customers 
					 WHERE customersname = 'Scott' 
					 AND customerslastname = 'Scott');



SELECT * 
FROM customers 
WHERE customersname = 'Scott' 
AND customerslastname = 'Scott';


SELECT purchases.quantity_purchased, items.item_name, customers.first_name, customers.last_name
FROM purchases
LEFT JOIN customers ON purchases.customer_id = customers.customer_id
JOIN items ON purchases.item_id = items.item_id;


SELECT purchases.quantity_purchased, items.item_name, customers.first_name, customers.last_name
FROM purchases
JOIN customers ON purchases.customer_id = customers.customer_id
JOIN items ON purchases.item_id = items.item_id
WHERE NOT (customers.first_name = 'Scott' AND customers.last_name = 'Scott');
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
