--basic syntax
-- SELECT * from <table1> <join type> JOIN <table2> ON <table1>.<field> = <table2>.<field>;

--Get all customers and their addresses.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;
--Get all orders and their line items.
SELECT * FROM line_items  JOIN  orders on line_items.order_id = orders.id;
--Which warehouses have cheetos?
SELECT * FROM warehouses JOIN warehouse_product ON warehouses.id = warehouse_product.warehouse_id JOIN products on warehouse_product.product_id = products.id WHERE products.description = 'cheetos';
--Which warehouses have diet pepsi?
SELECT * FROM warehouses JOIN warehouse_product ON warehouses.id = warehouse_product.warehouse_id JOIN products on warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';
--Get the number of orders for each customer. note: It is OK if those without orders are not included in results.
SELECT customers.first_name, customers.last_name, COUNT(customers.id) AS numberofOrders FROM customers  JOIN addresses ON customers.id = addresses.customer_id JOIN orders ON addresses.id = orders.address_id GROUP BY(customers.first_name, customers.last_name)
-- How many customers do we have?
SELECT COUNT(id) AS numberOfCustomers FROM customers;
--How many products do we carry?
SELECT COUNT(id) AS numberOfProducts FROM products;
--What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand)FROM warehouses JOIN warehouse_product ON warehouse.id = Warehouse_product.warehouse_id JOIN products on warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';
