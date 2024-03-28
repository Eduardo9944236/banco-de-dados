INSERT INTO cliente (nome, endereço, email, celular, datanasc )
VALUES ('kaiki', 'rua 1', 'kaiki@exemplo.com', '22-11 926408424', '1985-02-012'),
('João', 'Rua das Flores 10', 'joao@email.com', '99-88888888', '1990-05-20'),
('Maria', 'Avenida Principal 123', 'maria@example.com', '11-77777777', '1988-09-15'),
('Pedro', 'Rua dos Bosques 5', 'pedro@email.com', '33-66666666', '1993-11-28'),
('Ana', 'Rua do Sol 8', 'ana@example.com', '44-55555555', '1982-03-07'),
('Lucas', 'Avenida Central 456', 'lucas@email.com', '55-44444444', '1996-07-12'),
('Mariana', 'Rua das Pedras 20', 'mariana@example.com', '66-33333333', '1991-01-30'),
('Rafael', 'Avenida das Palmeiras 15', 'rafael@email.com', '77-22222222', '1987-06-18'),
('Juliana', 'Rua das Árvores 25', 'juliana@example.com', '88-11111111', '1999-04-25'),
('Carlos', 'Rua dos Coqueiros 30', 'carlos@email.com', '00-99999999', '1980-12-03');

       
       
INSERT INTO produtos (nome, preço, descrição, qtd)
VALUES ('bicicleta', 100, 'Esse e o primeiro produto','10'),
('Notebook Dell', 2500, 'Esse e o segundo produto', '5'),
('Smartphone Samsung', 1200, 'Esse e o terceiro produto', '8'),
('Livro "O Senhor dos Anéis"', 35, 'Esse e o quarto produto', '20'),
('Fone de Ouvido Sony', 150, 'Esse e o quinto produto', '15'),
('Cadeira Gamer', 400, 'Esse e o sexto produto', '12'),
('Câmera Canon', 800, 'Esse e o setimo produto', '3'),
('Tênis Nike', 120, 'Esse e o oitavo produto', '30'),
('Relógio Casio', 50, 'Esse e o nono produto', '25'),
('Bolsa Feminina', 80, 'Esse e o decimo produto', '18');
       
       
INSERT INTO pedido (cliente_id, data_de_compra, valor_total, Data_estimada_de_entrega)
VALUES (1, '2023-03-27 10:00:00', 100.99, '2023-04-03'),
(2, '2023-05-15 14:30:00', 75.50, '2023-05-22'),
(3, '2023-06-08 09:45:00', 200.00, '2023-06-15'),
(4, '2023-07-02 16:20:00', 55.80, '2023-07-09'),
(5, '2023-08-17 11:10:00', 150.25, '2023-08-24'),
(6, '2023-09-03 08:00:00', 90.75, '2023-09-10'),
(7, '2023-10-22 13:45:00', 300.00, '2023-10-29'),
(8, '2023-11-11 17:30:00', 80.20, '2023-11-18'),
(9, '2023-12-05 10:20:00', 125.60, '2023-12-12'),
(10, '2024-01-20 09:00:00', 180.99, '2024-01-27');
 
       
INSERT INTO itens (ordem_id, produtos_id, quantidade, valor_unico, valor_total)
VALUES (1, 1, 2, 10.99, 21.98),
(2, 3, 1, 15.50, 31.00),
(3, 2, 3, 8.75, 17.50),
(4, 5, 1, 5.20, 10.40),
(5, 4, 2, 12.75, 25.50),
(6, 1, 3, 9.30, 18.60),
(7, 2, 1, 7.90, 15.80),
(8, 3, 2, 14.25, 28.50),
(9, 4, 3, 11.60, 23.20),
(10, 5, 1, 6.99, 13.98);
       
UPDATE cliente
SET email = 'maria@example.com'
WHERE  id_cliente IN (1, 2, 3, 4);

UPDATE produtos
SET qtd = qtd - 5
WHERE nome IN (1, 2, 3, 4);
       
DELETE FROM cliente
WHERE endereço IN (1, 2);

DELETE FROM produtos
WHERE preço IN (1, 2);