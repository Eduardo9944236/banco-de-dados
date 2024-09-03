/* Exercício 1: Listar todos os pedidos com detalhes do cliente */


SELECT orders.order_id, orders.order_date, customers.first_name, customers.last_name, customers.email FROM customers
INNER JOIN orders
ON orders.order_id = customers.customer_id;

/* Exercício 2: Encontrar todos os produtos pedidos por um cliente específico */


SELECT products.product_name, Order_Items.quantity FROM products
INNER JOIN Order_Items
ON products.product_id = Order_Items.order_id
INNER JOIN orders
ON Order_Items.order_id = orders.order_id
WHERE orders.customer_id = 1;

/* Exercício 3: Calcular o total gasto por cada cliente */

SELECT customers.first_name, customers.last_name, sum(order_items.quantity * products.price) FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
INNER JOIN order_items
ON orders.order_id = order_items.order_id
INNER JOIN products
ON order_items.product_id = products.product_id GROUP BY customers.customer_id, customers.first_name, customers.last_name;

/* Exercício 4: Encontrar os clientes que nunca fizeram um pedido */

SELECT customers.first_name, customers.last_name FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id WHERE orders.order_id IS NULL;

/* Exercício 5: Listar os produtos mais vendidos */

SELECT products.product_name, order_items.quantity FROM products
JOIN order_items
ON products.product_id = order_items.product_id ORDER BY order_items.quantity DESC;