drop database loja;
create database loja;
use loja;

CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE carros (
 id INT AUTO_INCREMENT PRIMARY KEY,
 carro VARCHAR(50) NOT NULL,
 ano_carro VARCHAR(50) NOT NULL
);

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT, 
    id_carro INT,
    data_pedido DATE NOT NULL, 
    valor DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_carro) REFERENCES carros(id)
);

INSERT INTO clientes (nome, email, pais) VALUES
('Juan dos Santos Hernandes', 'juan.hernandes@email.com', 'Espanha'),
('Kauã Gomes dos Santos', 'kaua.santos@email.com', 'Brasil'),
('Kauan Hikaru Murata Yogi', 'kauan.yogi@email.com', 'Brasil'),
('Lucas Gomes Antunes', 'lucas.antunes@email.com', 'Japão'),
('Lucas Lira Monteiro Soares', 'lucas.soares@email.com', 'Brasil'),
('Lucas Sousa Silva', 'lucas.silva@email.com', 'Brasil'),
('Lucas Vechi Liggi', 'lucas.liggi@email.com', 'EUA'),
('Luis Pontes Ota', 'luis.ota@email.com', 'Brasil'),
('Luiz Raimundo Neto', 'luiz.neto@email.com', 'Japão'),
('Maria Beatriz Fernandes Lopes', 'maria.lopes@email.com', 'Argentina'),
('Maria Clara Silva de Melo', 'maria.melo@email.com', 'Brasil'),
('Mateus Augusto Santos Fernandes', 'mateus.fernandes@email.com', 'Brasil'),
('Melissa Rie Kanzato', 'melissa.kanzato@email.com', 'Japão'),
('Pedro Herique Passos Martins', 'pedro.martins@email.com', 'Brasil'),
('Renan Enzo Morita', 'renan.morita@email.com', 'Brasil'),
('Renan Fernandes Dantas', 'renan.dantas@email.com', 'Portugal'),
('Ryan Reis dos Santos', 'ryan.santos@email.com', 'Canadá'),
('Sarah Rufino Reis', 'sarah.reis@email.com', 'Brasil'),
('Sofia Ansanelo Martins', 'sofia.martins@email.com', 'França'),
('Tainá Marcondes Toinaki', 'taina.toinaki@email.com', 'Brasil'),
('Vicenzo Gadelha Greco', 'vicenzo.greco@email.com', 'Itália');

INSERT INTO carros (carro, ano_carro) VALUES
('Duster', '2021-05-15'),
('Sandero', '2019-08-22'),
('Stepway', '2023-03-09'),
('Logan', '2018-11-30'),
('Kwid', '2020-07-04'),
('Nova Master', '2022-02-18'),
('Duster Oroch', '2020-09-11'),
('Megane', '2021-12-25'),
('Kwid-E', '2023-04-07'),
('Kardian', '2019-06-19');

INSERT INTO pedidos (id_cliente, id_carro, data_pedido, valor) VALUES
(5, 3, '2024-09-01', 95000.00),
(1, 2, '2022-08-05', 60000.00),
(12, 5, '2022-07-10', 70000.00),
(9, 4, '2023-12-12', 85000.00),
(2, 1, '2021-06-15', 90000.00),
(15, 6, '2024-02-18', 150000.00),
(10, 8, '2024-03-20', 80000.00),
(18, 9, '2023-05-22', 90000.00),
(3, 10, '2023-10-25', 120000.00),
(17, 1, '2021-07-28', 95000.00),
(7, 4, '2022-01-01', 85000.00),
(14, 3, '2024-04-03', 95000.00),
(11, 5, '2023-09-05', 70000.00),
(6, 2, '2021-10-07', 75000.00),
(8, 6, '2024-01-09', 160000.00),
(20, 7, '2023-11-12', 110000.00),
(13, 8, '2024-05-15', 95000.00),
(16, 9, '2024-06-18', 85000.00),
(4, 10, '2022-10-20', 130000.00),
(19, 1, '2022-04-22', 90000.00);

SELECT
    c.nome,
    c.email,
    ca.carro,
    ca.ano_carro,
    p.data_pedido,
    p.valor
FROM
    clientes c
INNER JOIN
    pedidos p ON c.id = p.id_cliente
INNER JOIN
    carros ca ON p.id_carro = ca.id;
