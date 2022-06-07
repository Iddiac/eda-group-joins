-- Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip FROM addresses
JOIN customers on customers.id = addresses.customer_id
GROUP BY customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip;

-- Get all orders and their line items (orders, quantity and product).
SELECT line_items.order_id, line_items.product_id, products.description, line_items.quantity, orders.order_date
FROM line_items
JOIN products ON products.id = line_items.product_id
JOIN orders ON orders.id = line_items.order_id;


-- Which warehouses have cheetos?
SELECT warehouse.warehouse 
FROM warehouse_product
JOIN products ON products.id= warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'cheetos';

delta

-- Which warehouses have diet pepsi?

SELECT warehouse.warehouse 
FROM warehouse_product
JOIN products ON products.id= warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'diet pepsi';

alpha, delta,gamma


-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT customers.id, count(orders.id) FROM orders
join addresses ON addresses.id = orders.address_id
JOIN customers ON customers.id = addresses.customer_id
GROUP BY customers.id;


-- How many customers do we have?

SELECT count(customers.id) from customers;

4


-- How many products do we carry?

SELECT count(products.id) from products;

7

-- What is the total available on-hand quantity of diet pepsi?

SELECT sum(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';


92