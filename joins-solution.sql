-- Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip FROM addresses
JOIN customers on customers.id = addresses.customer_id
GROUP BY customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip;

-- Get all orders and their line items (orders, quantity and product).



-- Which warehouses have cheetos?



-- Which warehouses have diet pepsi?



-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.



-- How many customers do we have?




-- How many products do we carry?



-- What is the total available on-hand quantity of diet pepsi?
