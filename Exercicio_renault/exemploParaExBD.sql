create database if not exists loja;
use loja;

CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT, 
    data_pedido DATE NOT NULL, 
    valor DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email) VALUES
('João Silva', 'joao@example.com'),
('Maria Souza', 'maria@example.com'),
('Carlos Oliveira', 'carlos@example.com');

INSERT INTO pedidos (id_cliente, data_pedido, valor) VALUES
(1, '2024-09-01', 150.00),
(1, '024-09-15', 200.00),
(2, '2024-09-05', 100.00);

SELECT
	c.nome,
    c.email,
    p.data_pedido,
    p.valor
FROM
	clientes c
INNER JOIN
	pedidos p ON c.id = p.id_cliente;
